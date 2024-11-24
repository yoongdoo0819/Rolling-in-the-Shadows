import json

# JSON 파일 경로
input_file_path = "optimism.mev_arbitrage_results.json"
output_file_path = "unique_exchanges.json"

# JSON 파일 읽기 및 "exchange" 값 추출 후 저장
def extract_and_save_unique_exchanges(input_file_path, output_file_path):
    try:
        with open(input_file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)  # JSON 파일 읽기
            exchange_set = set()  # 중복 제거를 위한 집합

            # "arbitrages"의 "swaps" 내 "exchange" 값 추출
            for entry in data:  # JSON 데이터가 리스트로 시작됨
                if 'arbitrages' in entry:
                    for arbitrage in entry['arbitrages']:
                        if 'swaps' in arbitrage:
                            for swap in arbitrage['swaps']:
                                if 'exchange' in swap:
                                    exchange_set.add(swap['exchange'])  # 집합에 추가

            # 집합을 리스트로 변환하여 파일로 저장
            unique_exchanges = list(exchange_set)
            print("len ", len(unique_exchanges))
            with open(output_file_path, 'w', encoding='utf-8') as output_file:
                json.dump(unique_exchanges, output_file, indent=4, ensure_ascii=False)

            print(f"중복되지 않은 exchange 값이 '{output_file_path}' 파일에 저장되었습니다.")

    except json.JSONDecodeError as e:
        print(f"JSON 디코딩 오류: {e}")
    except Exception as e:
        print(f"오류 발생: {e}")

# 함수 호출
extract_and_save_unique_exchanges(input_file_path, output_file_path)
