#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import re
import os
import time
import json
import eth_abi
import requests
import traceback

from web3 import Web3

chunk_size = 9
addresses = [

    # UniSwap
    "0x4533bAD2dc588F0faDf8d2E72386d4cD6A19B519",
    "0x68F5C0A2DE713a54991E01858Fd27a3832401849",
    "0xD1F1baD4c9E6c44DeC1e9bF3B94902205c5Cd6C3",
    "0xA39fe8F7A00CE28B572617d3a0bC1c2B44110e79",
    "0x1fb3cf6e48F1E7B10213E7b6d87D4c073C7Fdb7b",
    "0x535541F1aa08416e69Dc4D610131099FA2Ae7222",
    "0x85C31FFA3706d1cce9d525a00f1C7D4A2911754c",
    "0x0392b358CE4547601BEFa962680BedE836606ae2",
    "0xFC1f3296458F9b2a27a0B91dd7681C4020E09D05",
    "0x03aF20bDAaFfB4cC0A521796a223f7D85e2aAc31",
    "0x73B14a78a0D396C521f954532d43fd5fFe385216",
    "0xD4344Ea0c5aDE7e22B9B275F0BdE7a145dEC5A23",
    "0x85149247691df622eaF1a8Bd0CaFd40BC45154a9",
    "0xB533c12fB4e7b53b5524EAb9b47d93fF6C7A456F",
    "0xA73C628eaf6e283E26A7b1f8001CF186aa4c0E8E",
    "0xaDAb76dD2dcA7aE080A796F0ce86170e482AfB4a",
    "0xff7fbDf7832Ae524dEdA39cA402E03D92aDFF7A5",
    "0x2aB22ac86b25BD448A4D9dC041Bd2384655299c4",
    "0xcA1b837C87c6563910c2BEFA48834fA2a8c3D72D",
    "0xc858A329Bf053BE78D6239C4A4343B8FbD21472b",
    "0x5b42A63d6741416CE9a7B9f4f16d8c9231CcdDd4",
    "0xfAF037caAfA9620bFAebc04C298Bf4A104963613",
    "0x9C92ED19a86986124447A73b27625230dD52f805",
    "0x1C3140aB59d6cAf9fa7459C6f83D4B52ba881d36",
    "0xA8a5356ee5d02Fe33d72355e4F698782F8f199e8",
    "0x04F6C85A1B00F6D9B75f91FD23835974Cc07E65c",
    "0x146b020399769339509c98B7B353d19130C150EC",
    "0xF1F199342687A7d78bCC16fce79fa2665EF870E1",
    "0x2Ae3d6096d8215Ac2Acddf30c60CAa984Ea5dEbe",
    "0x19EA026886cbB7A900EcB2458636d72b5CaE223B",
    "0xB589969D38CE76D3d7AA319De7133bC9755fD840",
    "0x730691cDaC3Cbd4D41FC5eb9D8AbBB0cEa795B94",
    "0xd28f71e383E93C570D3EdFe82EBbcEb35Ec6C412",
    "0x5adbA6c5589c50791dd65131dF29677595C7Efa7",
    "0xe9e3893921dE87b1194a8108F9d70C24BdE71c27",
    "0x8323D063b1D12ACce4742f1E3ed9BC46d71f4222",
    "0xAdb35413eC50E0Afe41039eaC8B930d313E94FA4",
    "0x4CE4a1a593Ea9f2e6B2c05016a00a2D300C9fFd8",
    "0x790fde1FD6d2568050061a88c375d5c2E06b140B",
    "0xE62bd99a9501ca33D98913105Fc2BeC5BAE6e5dD",

    # Balancer
    "0x4Fd63966879300caFafBB35D157dC5229278Ed23",
    "0x5F8893506Ddc4C271837187d14A9C87964a074Dc",
    "0x7Ca75bdEa9dEde97F8B13C6641B768650CB83782",
    "0x2Bb4712247D5F451063b5E4f6948abDfb925d93D",
    "0x73A7fe27fe9545D53924E529Acf11F3073841b9e",
    "0xcb7D357c84B101e3d559fF4845cef63D7D0753ef",
    "0x004700ba0a4f5f22e1E78a277fCA55e36F47E09C",
    "0x0244B0025264dC5f5c113d472D579C9c994A59CE",
    "0xA71021492a3966EeC735Ed1B505aFa097c7cFe6f",
    "0x11f0b5CCA01B0F0A9Fe6265aD6E8ee3419c68440",
    "0x9Da11Ff60bfc5aF527f58fd61679c3AC98d040d9",
    "0x5BB3E58887264B667f915130fD04bbB56116C278",
    "0xc1F46ce83439886F0ea9c21512b36e7E67239d2C",
    "0x2FEb76966459d7841fa8A7Ed0aa4bf574d6111Bf",
    "0xadF86a03AF1C77D81380f9fa7c4c797a3ebF2d3A",
    "0xE906d4C4fC4c3Fe96560De86B4bf7eD89aF9A69a",
    "0x39965c9dAb5448482Cf7e002F583c812Ceb53046",
    "0x0Ccb0C34D4898dFA8de3ece9D814074E60aDEFd0",
    "0x2F6B6973F38381Fe453EA819b7e0f0897AdeAae7",
    "0xc38C2fC871188935B9C615e73B17f2e7e463C8b1",
    "0x5028497af0c9a54ea8C6D42a054c0341B9fc6168",
    "0xD13D81aF624956327A24d0275CBe54b0eE0E9070",
    "0x7B50775383d3D6f0215A8F290f2C9e2eEBBEceb2",
    "0xd6E5824b54f64CE6f1161210bc17eeBfFC77E031",
    "0x4Dde571Dc66217a062e4B50f9b20c4D08b3245a0",
    "0xd20f6F1D8a675cDCa155Cb07b5dC9042c467153f",
    "0x408e11EC9B1751c3d00589b61caE484e07FB9e44",
    "0x8BB826Afc0fF7d2c034a2883F4C461ffD238E1C3",
    "0xeFb0D9F51EFd52d7589A9083A6d0CA4de416c249",
    "0xBC80540BB282E7724BE7f1e0B92b4Ea51340dDBf",
    "0x785F08fB77ec934c01736E30546f87B4daccBe50",
    "0x7Ef99013E446dDCe2486b8E04735b7019a115e6F",
    "0xD4156A7A7E85D8Cb2DE2932807d8d5F08d05A889",
    "0x428E1CC3099cF461B87D124957A0d48273f334b1",
    "0x3dC09DB8E571Da76Dd04E9176afc7fEEe0b89106",
    "0x752de5046A3f726d3165cb8CD4143F299949cE9D",
    "0x025dB202Cba62A0d804CF337Df055ee6daBDe843",
    "0xf3420D479d8DAa6ced1d48097Aad67eF38A1Fe1c",
    "0x7ED087AfAB0b2653C8137744916eD1abA97E2fa2",
    "0x2a5139cd86C041aa3467e649F5Ee0880A5de2f2F",
    "0x7e40FE211C8053B78F31D6C4c15157A430a03349",
    "0x38DB9CB893BAFcc4668E143e22FE08eCF9104229",
    "0xACfE9b4782910A853b68abbA60f3FD8049Ffe638",
    "0xc931b64E181a4a29416F55E67921BFe16e4Fe789",
    "0xaB3bcd6365C7b3E80f9633c2c54ebF09d66C616d",
    "0x390c2a1Ffe5576ce97C07850F027cb5C0628FAC4",
    "0xF5521ca6A3295bAbb4b2729931Cd358BE35da7e3",
    "0x478980c67d53Cd990F2B7bab311DDC9934324E7B",
    "0x899F737750db562b88c1E412eE1902980D3a4844",
    "0x3C74C4eD512050Eb843d89fb9DcD5EBb4668EB6D",
    "0x62cF35DB540152e94936dE63eFc90d880D4e241B",
    "0xb1C9aC57594e9B1EC0f3787D9f6744EF4CB0A024",
    "0x250a1381f79593B96B462FB0D575c75795f80332",
    "0x00b82bc5EdEa6E5E6c77635e31a1A25Aad99f881",
    "0x373643B17Cd80e37675c8C98eF774efe6ca0b4De",
    "0xF246fd9800A36907602a02c7C8Bf2B11c585218A",
    "0x2c2549E410EBc7D2A709b37667f9A034f7d9aF0b",
    "0xde45F101250f2ca1c0f8adFC172576d10c12072D",
    "0x1D95129c18a8c91C464111FDf7d0Eb241B37a985",
    "0x0503Dd6b2D3Dd463c9BeF67fB5156870Af63393E",
    "0x23Ca0306B21ea71552B148cf3c4db4Fc85AE1929",
    "0x32F0DC9E2D890BAC95106a65eB82db70Bc58BaDB",
    "0x59aba93eb2Fb1D12ae0a292d96655A13469417A0",
    "0xc77E5645Dbe48d54afC06655e39D3Fe17eB76C1c",
    "0x7498470d6aC742B31644298413714d63496F3A22",
    "0x50bd3D0414fda3acB1559D8E2EFbBdCE974584e1",
    "0x359EA8618c405023Fc4B98dAb1B01F373792a126",
    "0xB0de49429fBb80c635432bbAD0B3965b28560177",
    "0x43da214fab3315aA6c02e0B8f2BfB7Ef2E3C60A5",
    "0xbB65192Fc43Cff2e2823BAe211EBE367f81f2f26",
    "0x6222ae1d2a9f6894dA50aA25Cb7b303497f9BEbd",
    "0xC9Eb4b8ce914EE451360B315ffD1D1AF8df96bE9",
    "0xf30dB0Ca4605e5115Df91B56BD299564dcA02666",
    "0xBad8de88FEBc2d9364254e108Fe5a547A7b6B4C0",
    "0xc523Ec066e0ef4FA2dff4e4d336D8A03b3b0c8D5",
    "0xc4EE406970047A70aED14621d97b3B460a7DEA0B",
    "0x04953368a77Af5B65512ee3536Efe152B96Aa453",
    "0x981Fb05B738e981aC532a99e77170ECb4Bc27AEF",
    "0x10D89732C7e3c5b548e766805b40bC0ECdca4499",
    "0x62DE5ca16A618E22F6dfE5315EbD31aCB10c44b6",
    "0x3F16F0301b62015B926c3b559b645a5a0e19d8aA",
    "0x8abd32F63328de16Fd4274e7C4a352b626B1eD7D",
    "0x05e7732bF9ae5592E6AA05aFE8Cd80f7Ab0a7bEA",
    "0x1cc3E990B23a09Fc9715Aaf7CCf21c212a9cbC16",
    "0x4055c21130112f8CF8f4FaB7a04236DeeE9Fac29",
    "0x098f32D98d0D64Dba199FC1923D3BF4192E78719",
    "0x8A819a4caBD6EfCb4E5504fE8679A1aBD831Dd8f",
    "0x59d9aF011578Ae587749D65D4c4F49a63221e236",
    "0x59A8fc1c5B424473b39339783AA4765d40AA4d53",
    "0xcBac17bC5Fa5285dF031AE20956632a3720866a9",
    "0x479A7d1fcDD71ce0C2ED3184bfbe9d23B92E8337",
    "0xB0F2C34b9CD5C377C5EfbBA3B31E67114810Cbc8",
    "0x2C4A83f98D1CdBEEEc825FABaCd09c46e2dD3C57",
    "0xac9F52e656Cee6097bd7B8A251b33529b5E30Bd5",
    "0x44ab8eFb8909330B4C646b509EE593815c0F0ec5",
    "0xDc125D09891C5b6b66061e3170E9A1E1c5cF9bE4",
    "0x4519c64266c8320A188800558D52cB6D0E1F00cF",
    "0x75C6B245515657Fd69f1645C051A2ba13a8D70c6",
    "0x40dBe796EAE37e371Cf0217A6dbB946CDAF9F1b7",
    "0xc05aB1B0aD472ce802E2c8db6f23e4a2865FdCa6",
    "0x3DD504bd492d0D8DB245eB38b1b39220c1f72721",
    "0x0604D50E1a314e0B8963a8387713EC0b539920B3",
    "0xe9949934c882c13D928e2FcF9D99138d3d16a52A",
    "0xE0b50B0635b90F7021d2618f76AB9a31B92D0094",
    "0xFe8C531ba9d4d9CCFd64167E389C15F47eB05fBe",
    "0x0A54996Ce9cEAA449Cde73dA6aA0368bfe3df6Dc",
    "0xFEf82DAd4428471b8473c8c4c6f6ce2AC6b51c84",
    "0xA96a0545460D2f550D58A10E14D82073c55a8B67",
    "0xD0fAb195Ef9db5365b289Fb3e38d38EF6B5D0361",
    "0x4d6461F181cf2B26a1cB4e3A070d63d0d31a5155",
    "0x1F131EC1175f023ee1534B16FA8aB237c00e2381",
    "0x8a2872fd28F42BD9F6559907235E83FbF4167f48",
    "0xF8bE10127b47b532B7Af1AC919e0d0Cb46BcD294",
    "0xeB7eE98165b305FBbF9E6BcE58229815570C654e",
    "0xb390A4e78442C1DDd5F446E2950533A4294B89D9",
    "0xD74E7D1BDFa2f79eA893542D864d2ee245476b69",
    "0x9964b1bD3CC530E5c58BA564e45d45290F677BE2",
    "0x92163a34af0365197447133c4F53f00A0454e8DB",
    "0xbec621c9AB4cEDDCc2A157CA9B5C475fAB65f6a4",
    "0x20aC7C9329822EE3Cf61d244BD4816941b50Cf7A",
    "0x22ED403FAdc58110f128246A7E13962F308841a1",
    "0x3Bc061a95B0AeEda3a9eca051F478468a03D5826",
    "0xc4cD76040A87604c78627DEe2450728Ac5e971E5",
    "0x34A81e8956BF20b7448b31990A2c06F96830a6e4",
    "0xCd7B2232B7435595bBc7FD7962f1f352fc2cC61a",
    "0x7ba1351E805beD53ECB1E6aD13113966024F7F43",
    "0xC97dEE022137a8c5F65B5138Cc690Fbe87806ED5",
    "0xB8ECe82fCfB948b1aF937E2819EB2D72Bb3D98d2",
    "0xDD25a7c4BA6bD7e9FeA298e4b231379ABcCca884",
    "0xf572649606db4743D217A2fA6E8b8eb79742C24A",
    "0x16D7E97b845145da68Bd22291d6C10275C3b3F77",
    "0x102Ba5c72e4BDf8E9243340425F0E523F8983d03",
    "0x5FC073E9c763AF7CB02f403130AcC62F9f034DbC",
    "0x947BEaafE07D45A89425E7C00Ab245bca02B9125",
    "0x0495e8d283C08a3Bf6c3163A72763797a06c56d8",
    "0x19b5F4F829115Cba31AeCeCecfA9bA23aCeD91c4",
    "0xB5285238628f80f1399B286cD6a1ce280C61E2F7",
    "0x95b7da84d58869366178D6d8CAF80469B49527a2",
    "0xCAca4544534F5C7C114c8fe939693E7595F370f7",
    "0xCEf953fb1563C5a2Bc89C3b54712d03d16689a17",
    "0x7C52A0853dE6E9e7C5B5940aAC33ce095ebbD275",
    "0xe94c45dE980f914904FDcFA9fbbe7c4A0FFe6ac7",
    "0xECE874b7A9051154866Ce79154d653481B0B8759",
    "0x63c6EA3047eE8c90AA1F0d271a307b04fB87499C",
    "0xD9C57025b3da04e5Bd078C22B69222E92dDb62f6",
    "0xD12Fd67d1522b79Af539cF651F3d2f6981519FE9",
    "0xB0305B8b5cB8CB8D20E8071cDf601977B40F6bA2",
    "0x7d6Bff131B359dA66d92f215FD4e186003BFAA42",
    "0x558C91142948DE588EdfcEE6dA6A8c3aCe22e9F8",
    "0x9AB692518817739E0cb111670e63cB7B08D6012c",
    "0x59a22a7859aCb8505968344d463809211B0c9cf6",
    "0xdF73fd65F5F480d13A788D57B5aD42Cdd6f34742",
    "0xFEDc53c698593e4283Ab0b306d43dACcd8914ef8",
    "0x58910d5bd045a20A37dE147f8ACEa75B2d881f61",
    "0x876E0A21626c33BDaB879330505eccc6091Aa607",
    "0x84e27B600155a5b411e311285cAc97889aEa281a",

    # Curve
    "0x1337BedC9D22ecbe766dF105c9623922A27963EC",
    "0xB90B9B1F91a01Ea22A182CD84C1E22222e39B415",
    "0x061b87122Ed14b9526A813209C8a59a633257bAb",
    "0x7Bc5728BC2b59B45a58d9A576E2Ffc5f0505B35E",
    "0x9F2fE3500B1a7E285FDc337acacE94c480e00130",
    "0x810D1AaA4Cd8F21c23bB648F2dfb9DC232A01F09",
    "0x1Dc5c0f8668a9F54ED922171d578011850ca0341",

    # aave v3 market
    "0x794a61358D6845594F94dc1DB02A252b5b4814aD",

    # balancer vault
    "0xBA12222222228d8Ba445958a75a0704d566BF2C8",
]

class colors:
    INFO = '\033[94m'
    OK = '\033[92m'
    FAIL = '\033[91m'
    END = '\033[0m'

def get_events_hash(w3,params):
    trx_hash = params['trx_hash']
    topics = params['topics']
    try:
        receipt = w3.eth.get_transaction_receipt(trx_hash)
        updated_events = list()
        for event in receipt['logs']:
            updated_event = dict(event)
            updated_event["blockHash"] = updated_event["blockHash"].hex()
            updated_event["transactionHash"] = updated_event["transactionHash"].hex()
            for i in range(len(updated_event["topics"])):
                updated_event["topics"][i] = updated_event["topics"][i].hex()
            if updated_event['topics'][0] in topics:
                updated_events.append(updated_event)
        return updated_events

    except Exception as e:
            print(colors.FAIL+"Error: "+str(e)+colors.END)
            return None

def get_events(w3, client_version, params, provider, network="ethereum", session=None):
    
    if ("geth" in client_version.lower() and network != "optimism") or network == "arbitrum":
        try:
            events = w3.eth.filter(params).get_all_entries()
            updated_events = list()
            for event in events:
                updated_event = dict(event)
                updated_event["blockHash"] = updated_event["blockHash"].hex()
                updated_event["transactionHash"] = updated_event["transactionHash"].hex()
                for i in range(len(updated_event["topics"])):
                    updated_event["topics"][i] = updated_event["topics"][i].hex()
                updated_events.append(updated_event)
            return updated_events
        except Exception as e:
            print(colors.FAIL+"Error: "+str(e)+colors.END)
            return None
    elif (network == "ethereum" and "geth" not in client_version.lower()) or network == "optimism" or network == "zksync":
        if session == None:
            session = requests.Session()
        try:
            events = []
            for i in range(0, len(addresses), chunk_size):
                chunk = addresses[i:i + chunk_size]
                
                fromBlock = params["fromBlock"]
                toBlock = 0
                lastBlock = params["toBlock"]
                
                while True:
                    toBlock = fromBlock + 50000

                    if toBlock >= lastBlock:
                        toBlock = lastBlock

                    print("topics", params["topics"], "fromBlock", fromBlock, "toBlock", toBlock, "lastBlock", lastBlock, "toBlock - fromBlock", toBlock - fromBlock)
                    res = session.post(provider.endpoint_uri, json={
                        "jsonrpc": "2.0",
                        "method": "eth_getLogs",
                        "params": [
                            {
                                "fromBlock": hex(fromBlock),
                                "toBlock": hex(toBlock),
                                "topics": params["topics"],
                                "address": chunk,
                            }
                        ],
                        "id": 1
                    })
                    if res.status_code == 200:
                        data = res.json()
                        if "result" in data:
                            temp_events = data["result"]

                            for event in temp_events:
                                event["address"] =  Web3.toChecksumAddress(event["address"].lower())
                                event["blockNumber"] = int(event["blockNumber"], 16)
                                event["transactionIndex"] = int(event["transactionIndex"], 16)
                                event["logIndex"] = int(event["logIndex"], 16)
                                events.append(event)

                    else:
                        print(colors.FAIL+"Error: Could not retrieve events: "+str(res.status_code)+" "+str(res.text)+" "+str(provider.endpoint_uri)+colors.END)
                        return None
                    
                    if toBlock == lastBlock:
                        print("to Block == lastBlock ", chunk)
                        break

                    fromBlock = toBlock + 1
            return events
        
        except Exception as e:
            print(colors.FAIL+str(traceback.format_exc())+colors.END)
            print(colors.FAIL+"Error: "+str(e)+colors.END)
            return None

        

    else:
        print(colors.FAIL+"Error: Client/Network is not supported! Supported clients are Geth and Erigon! Supported networks are Ethereum, Optimism, Arbitrum, and zkSync! Client version: "+client_version+colors.END)
        return None

def get_coin_list(platform, update_prices=False):
    path = os.path.dirname(__file__)
    if update_prices or not os.path.exists(path+"/coin_list_"+platform+".json"):
        print("Getting list of coins from "+colors.INFO+"CoinGecko.com..."+colors.END)
        response = requests.get("https://api.coingecko.com/api/v3/coins/list?include_platform=true").json()
        coin_list = dict()
        if "status" in response and "error_code" in response["status"] and response["status"]["error_code"] == 429:
            print(colors.FAIL+"Error: "+str(response["status"]["error_message"])+colors.END)
        else:
            for coin in response:
                if   platform == "ethereum" and "ethereum" in coin["platforms"] and coin["platforms"]["ethereum"]:
                    coin_list[Web3.toChecksumAddress(coin["platforms"]["ethereum"].lower())] = coin["id"]
                elif platform == "arbitrum" and "arbitrum-one" in coin["platforms"] and coin["platforms"]["arbitrum-one"]:
                    coin_list[Web3.to_checksum_address(coin["platforms"]["arbitrum-one"].lower())] = coin["id"]
                elif platform == "optimism" and "optimistic-ethereum" in coin["platforms"] and coin["platforms"]["optimistic-ethereum"]:
                    coin_list[Web3.to_checksum_address(coin["platforms"]["optimistic-ethereum"].lower())] = coin["id"]
                elif platform == "zksync" and "zksync" in coin["platforms"] and coin["platforms"]["zksync"]:
                    coin_list[Web3.to_checksum_address(coin["platforms"]["zksync"].lower().split('/')[0].split('#')[0])] = coin["id"]
        with open(path+"/coin_list_"+platform+".json", "w") as f:
            json.dump(coin_list, f, indent=2)
    else:
        if os.path.exists(path+"/coin_list_"+platform+".json"):
            with open(path+"/coin_list_"+platform+".json", "r") as f:
                coin_list = json.load(f)
    return coin_list

def get_prices(platform, update_prices=False):
    coin_list = get_coin_list(platform, update_prices)
    print("Fetching latest prices from "+colors.INFO+"CoinGecko.com..."+colors.END)
    from_timestamp = str(1710306377) # str(1577833200) # Wed Jan 01 2020 00:00:00 GMT+0100 (Central European Standard Time)
    to_timestamp = str(1730402541) #str(int(time.time()))
    time.time()
    prices = dict()
    path = os.path.dirname(__file__)
    if os.path.exists(path+"/prices_"+platform+".json"):
        with open(path+"/prices_"+platform+".json", "r") as f:
            prices = json.load(f)
    else:
        prices["eth_to_usd"] = requests.get("https://api.coingecko.com/api/v3/coins/ethereum/market_chart/range?vs_currency=usd&from="+from_timestamp+"&to="+to_timestamp).json()["prices"]
    counter = 0
    total = 0
    if update_prices:
        print("Retrieving prices for "+colors.INFO+str(len(coin_list))+" coin(s)."+colors.END)
        for address in coin_list:
            total += 1
            if address not in prices:
                market_id = coin_list[address]
                print(address, market_id, "("+str(total)+"/"+str(len(coin_list))+")")
                try:
                    response = requests.get("https://api.coingecko.com/api/v3/coins/"+market_id+"/market_chart/range?vs_currency=eth&from="+from_timestamp+"&to="+to_timestamp)
                    prices[address] = response.json()["prices"]
                    counter += 1
                    time.sleep(10)
                except Exception:
                    if  response.json()["status"] == 503 and response.json()["error"] == "Service Unavailable" or \
                        response.json()["status"]["error_code"] == 429 and "Rate Limit" in response.json()["status"]["error_message"]:
                        print(colors.FAIL+"Error: CoinGecko is either currently not available or they are rate limiting us. Waiting for 10 seconds before retrying..."+colors.END)
                        with open(path+"/prices_"+platform+".json", "w") as f:
                            json.dump(prices, f, indent=2)
                        time.sleep(10)
                    else:
                        print(colors.FAIL+"Error:", response.text+colors.END)
                        with open(path+"/prices_"+platform+".json", "w") as f:
                            json.dump(prices, f, indent=2)
                        return prices, coin_list
                if counter == 10:
                    with open(path+"/prices_"+platform+".json", "w") as f:
                        json.dump(prices, f, indent=2)
                    counter = 0
        with open(path+"/prices_"+platform+".json", "w") as f:
            json.dump(prices, f, indent=2)
    print("Fetched prices for", colors.INFO+str(len(prices))+colors.END, "coins.")
    return prices, coin_list

def get_price_from_timestamp(timestamp, prices):
    timestamp *= 1000
    one_eth_to_usd = prices[-1][1]
    for index, _ in enumerate(prices):
        if index < len(prices)-1:
            if prices[index][0] <= timestamp and timestamp <= prices[index+1][0]:
                return prices[index][1]
    print(colors.FAIL+"Error: Could not find timestamp. Returning latest price instead."+colors.END)
    print(colors.FAIL+"Please consider updating prices.json!"+ str(timestamp) +colors.END)
    return one_eth_to_usd

def encode_with_signature(function_signature, args):
    function_selector = Web3.keccak(text=function_signature)[:4]
    selector_text = function_signature[function_signature.find("(") + 1 : function_signature.rfind(")")]
    arg_types = selector_text.split(",")
    encoded_args = eth_abi.encode(arg_types, args)
    return function_selector + encoded_args

def toSigned256(n):
    n = n & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    return (n ^ 0x8000000000000000000000000000000000000000000000000000000000000000) - 0x8000000000000000000000000000000000000000000000000000000000000000
