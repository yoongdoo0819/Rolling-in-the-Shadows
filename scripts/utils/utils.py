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
    fromBlock = params["fromBlock"]
    toBlock = 0
    lastBlock = params["toBlock"]
    
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

            while True:
                toBlock = fromBlock + 50000

                if toBlock >= lastBlock:
                    toBlock = lastBlock

                print("fromBlock", fromBlock, "toBlock", toBlock, "lastBlock", lastBlock, "toBlock - fromBlock", toBlock - fromBlock)
                res = session.post(provider.endpoint_uri, json={
                    "jsonrpc": "2.0",
                    "method": "eth_getLogs",
                    "params": [
                        {
                            "fromBlock": hex(fromBlock),
                            "toBlock": hex(toBlock),
                            "topics": params["topics"],
                            # UniSwap https://app.uniswap.org/explore/pools/optimism
                            "address": [ 
                                "0xCb1355ff08Ab38bBCE60111F1bb2B784bE25D7e8",
                                "0x1fb3cf6e48F1E7B10213E7b6d87D4c073C7Fdb7b",
                                "0x4533bAD2dc588F0faDf8d2E72386d4cD6A19B519",
                                # "0x68F5C0A2DE713a54991E01858Fd27a3832401849",
                                # "0xD1F1baD4c9E6c44DeC1e9bF3B94902205c5Cd6C3",
                                # "0xA39fe8F7A00CE28B572617d3a0bC1c2B44110e79",
                                # "0x1fb3cf6e48F1E7B10213E7b6d87D4c073C7Fdb7b",
                                # "0x535541F1aa08416e69Dc4D610131099FA2Ae7222",
                                # "0x85C31FFA3706d1cce9d525a00f1C7D4A2911754c",
                                # "0x0392b358CE4547601BEFa962680BedE836606ae2",
                                # "0xFC1f3296458F9b2a27a0B91dd7681C4020E09D05",
                                # "0x03aF20bDAaFfB4cC0A521796a223f7D85e2aAc31",
                                # "0x73B14a78a0D396C521f954532d43fd5fFe385216",
                                # "0xD4344Ea0c5aDE7e22B9B275F0BdE7a145dEC5A23",
                                # "0x85149247691df622eaF1a8Bd0CaFd40BC45154a9",
                                # "0xB533c12fB4e7b53b5524EAb9b47d93fF6C7A456F",
                                # "0xA73C628eaf6e283E26A7b1f8001CF186aa4c0E8E",
                                # "0xaDAb76dD2dcA7aE080A796F0ce86170e482AfB4a",
                                # "0xff7fbDf7832Ae524dEdA39cA402E03D92aDFF7A5",
                                # "0x2aB22ac86b25BD448A4D9dC041Bd2384655299c4",
                                # "0xcA1b837C87c6563910c2BEFA48834fA2a8c3D72D",
                                # "0xc858A329Bf053BE78D6239C4A4343B8FbD21472b",
                                # "0x5b42A63d6741416CE9a7B9f4f16d8c9231CcdDd4",
                                # "0xfAF037caAfA9620bFAebc04C298Bf4A104963613",
                                # "0x9C92ED19a86986124447A73b27625230dD52f805",
                                # "0x1C3140aB59d6cAf9fa7459C6f83D4B52ba881d36",
                                # "0xA8a5356ee5d02Fe33d72355e4F698782F8f199e8",
                                # "0x04F6C85A1B00F6D9B75f91FD23835974Cc07E65c",
                                # "0x146b020399769339509c98B7B353d19130C150EC",
                                # "0xF1F199342687A7d78bCC16fce79fa2665EF870E1",
                                # "0x2Ae3d6096d8215Ac2Acddf30c60CAa984Ea5dEbe",
                                # "0x19EA026886cbB7A900EcB2458636d72b5CaE223B",
                                # "0xB589969D38CE76D3d7AA319De7133bC9755fD840",
                                # "0x730691cDaC3Cbd4D41FC5eb9D8AbBB0cEa795B94",
                                # "0xd28f71e383E93C570D3EdFe82EBbcEb35Ec6C412",
                                # "0x5adbA6c5589c50791dd65131dF29677595C7Efa7",
                                # "0xe9e3893921dE87b1194a8108F9d70C24BdE71c27",
                                # "0x8323D063b1D12ACce4742f1E3ed9BC46d71f4222",
                                # "0xAdb35413eC50E0Afe41039eaC8B930d313E94FA4",
                                # "0x4CE4a1a593Ea9f2e6B2c05016a00a2D300C9fFd8",
                                # "0x790fde1FD6d2568050061a88c375d5c2E06b140B",
                                # "0xE62bd99a9501ca33D98913105Fc2BeC5BAE6e5dD",
                            ]
                        }
                    ],
                    "id": 1
                })
                if res.status_code == 200:
                    print(res.json())
                    temp_events = res.json()["result"]
                    print("temp_events", temp_events)
                    for event in temp_events:
                        event["address"] =  Web3.toChecksumAddress(event["address"].lower())
                        event["blockNumber"] = int(event["blockNumber"], 16)
                        event["transactionIndex"] = int(event["transactionIndex"], 16)
                        event["logIndex"] = int(event["logIndex"], 16)
                        events.append(event)

                    if toBlock == lastBlock:
                        break
                    # return events
                else:
                    print(colors.FAIL+"Error: Could not retrieve events: "+str(res.status_code)+" "+str(res.text)+" "+str(provider.endpoint_uri)+colors.END)
                    return None
                
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
    from_timestamp = str(1700067200) # str(1577833200) # Wed Jan 01 2020 00:00:00 GMT+0100 (Central European Standard Time)
    to_timestamp = str(int(time.time()))
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
    print(colors.FAIL+"Please consider updating prices.json!"+colors.END)
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
