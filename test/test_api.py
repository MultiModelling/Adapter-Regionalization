import requests

api_endpoint = "http://localhost:9220"

res = requests.get(api_endpoint + '/status')
if res.ok:
    print("Endpoint /status ok! ", res)
else:
    print("Endpoint /status not ok! ")
    exit(1)

model_run_id = None
res = requests.get(api_endpoint + '/model/request')
if res.ok:
    print("Endpoint /model/request ok!")
    result = res.json()
    print(result)
    model_run_id = result['model_run_id']
else:
    print("Endpoint /model/request not ok!")
    exit(1)

# TODO: update this
post_body = {
    "base_path": "",
    "output_file_path": "test/Regionalized.esdl",
    "year": 2020,
    "from_scope": "COUNTRY",
    "to_scope": "PROVINCE",
    "esdl_b64": "PD94bWwgdmVyc2lvbj0nMS4wJyBlbmNvZGluZz0nVVRGLTgnPz4KPGVzZGw6RW5lcmd5U3lzdGVtIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhtbG5zOmVzZGw9Imh0dHA6Ly93d3cudG5vLm5sL2VzZGwiIGVzZGxWZXJzaW9uPSJ2MjIxMSIgbmFtZT0iTmVkZXJsYW5kIiBkZXNjcmlwdGlvbj0iIiB2ZXJzaW9uPSIxIiBpZD0iZDFiNjA4NTktNTljZi00ZWVlLWFhZmYtNGEyZDI4ODJmMTUzIj4KICA8ZW5lcmd5U3lzdGVtSW5mb3JtYXRpb24geHNpOnR5cGU9ImVzZGw6RW5lcmd5U3lzdGVtSW5mb3JtYXRpb24iIGlkPSJmY2U5MjhmZS02OTBiLTRhNzAtYTM5Yy1mOTljNjI5MDhhN2MiPgogICAgPHF1YW50aXR5QW5kVW5pdHMgeHNpOnR5cGU9ImVzZGw6UXVhbnRpdHlBbmRVbml0cyIgaWQ9IjVjNDQ3YWUyLThkYmMtNDczMS05MDNkLWM0M2RkZTY1ZWVmMCI+CiAgICAgIDxxdWFudGl0eUFuZFVuaXQgeHNpOnR5cGU9ImVzZGw6UXVhbnRpdHlBbmRVbml0VHlwZSIgZGVzY3JpcHRpb249IkVuZXJneSBpbiBUSiIgcGh5c2ljYWxRdWFudGl0eT0iRU5FUkdZIiB1bml0PSJKT1VMRSIgbXVsdGlwbGllcj0iVEVSUkEiIGlkPSJjYzIyNGZhMC00YzQ1LTQ2YzAtOWM2Yy0yZGJhNDRhYWFhY2MiLz4KICAgIDwvcXVhbnRpdHlBbmRVbml0cz4KICA8L2VuZXJneVN5c3RlbUluZm9ybWF0aW9uPgogIDxpbnN0YW5jZSB4c2k6dHlwZT0iZXNkbDpJbnN0YW5jZSIgaWQ9IjZmMTVkOGE0LWZkMTAtNGE0NC1iNjAxLTk3MTVmOTI5OTczOCIgbmFtZT0iVW50aXRsZWQgSW5zdGFuY2UiPgogICAgPGFyZWEgeHNpOnR5cGU9ImVzZGw6QXJlYSIgaWQ9IjMxIiBuYW1lPSJOZWRlcmxhbmQiIHNjb3BlPSJDT1VOVFJZIj4KICAgICAgPGFzc2V0IHhzaTp0eXBlPSJlc2RsOkVsZWN0cmljaXR5RGVtYW5kIiBuYW1lPSJFbGVjdHJpY2l0eURlbWFuZF83M2U2IiBpZD0iNzNlNjYwZGYtYWYxNS00ZDc4LTk1MjUtMTdhZTY2NzQ1NmFlIj4KICAgICAgICA8Z2VvbWV0cnkgeHNpOnR5cGU9ImVzZGw6UG9pbnQiIGxhdD0iNTIuMDk0MTE1MDE0NDE1OTU1IiBsb249IjUuMTkxODk4MzQ1OTQ3MjY2NSIvPgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOkluUG9ydCIgaWQ9ImMxYWY1NWYzLTMyNmEtNGNkZi04YTBjLTUzYWQ3YzAyODMwYSIgbmFtZT0iSW4iPgogICAgICAgICAgPHByb2ZpbGUgeHNpOnR5cGU9ImVzZGw6U2luZ2xlVmFsdWUiIHZhbHVlPSIxMDAuMCIgaWQ9IjU2ZmRjMDEyLTE1M2YtNDgzZi04NzgyLTgwYmE2MmQ0MWU1ZCI+CiAgICAgICAgICAgIDxwcm9maWxlUXVhbnRpdHlBbmRVbml0IHhzaTp0eXBlPSJlc2RsOlF1YW50aXR5QW5kVW5pdFJlZmVyZW5jZSIgcmVmZXJlbmNlPSJjYzIyNGZhMC00YzQ1LTQ2YzAtOWM2Yy0yZGJhNDRhYWFhY2MiLz4KICAgICAgICAgIDwvcHJvZmlsZT4KICAgICAgICA8L3BvcnQ+CiAgICAgIDwvYXNzZXQ+CiAgICAgIDxhc3NldCB4c2k6dHlwZT0iZXNkbDpXaW5kVHVyYmluZSIgcG93ZXI9IjEwMDAwMDAwMDAwLjAiIG5hbWU9IldpbmRUdXJiaW5lXzVkNDAiIGlkPSI1ZDQwYTIwMi1lZjdkLTQ4ZWEtODliZC1jZTI2OTYzYzYxZWUiPgogICAgICAgIDxnZW9tZXRyeSB4c2k6dHlwZT0iZXNkbDpQb2ludCIgbGF0PSI1Mi4wOTYxNzE0OTQ2NTE3ODQiIGxvbj0iNS4xODc5NTAxMzQyNzczNDUiLz4KICAgICAgICA8cG9ydCB4c2k6dHlwZT0iZXNkbDpPdXRQb3J0IiBpZD0iYzBmZTYwMmEtMTZjMC00NjdhLWI2MGEtMTBjZGM2NGZiYmQ5IiBuYW1lPSJPdXQiLz4KICAgICAgPC9hc3NldD4KICAgICAgPGFzc2V0IHhzaTp0eXBlPSJlc2RsOkdhc0hlYXRlciIgcG93ZXI9IjEwMDAwMDAwMDAwMC4wIiBlZmZpY2llbmN5PSIwLjkiIG5hbWU9Ikdhc0hlYXRlcl8yZTMzIiBpZD0iMmUzMzk1YjItZTMzMi00NmE5LWIwMzYtMWU2YzVjNGI4YWE1Ij4KICAgICAgICA8Z2VvbWV0cnkgeHNpOnR5cGU9ImVzZGw6UG9pbnQiIGxhdD0iNTIuMDk0MTE1MDE0NDE1OTU1IiBsb249IjUuMTg4MTIxNzk1NjU0Mjk4Ii8+CiAgICAgICAgPHBvcnQgeHNpOnR5cGU9ImVzZGw6SW5Qb3J0IiBpZD0iMWU5OTQwOGUtNDJjMS00ZjdlLWI5MzYtOGRmZjU4ZTMwYWQ4IiBuYW1lPSJJbiIvPgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOk91dFBvcnQiIGlkPSI4MTRjNGUxYy04OWQxLTRkZjEtYTM4ZS1kYzA1MzM3ZjgwODIiIG5hbWU9Ik91dCIvPgogICAgICA8L2Fzc2V0PgogICAgICA8YXNzZXQgeHNpOnR5cGU9ImVzZGw6SGVhdGluZ0RlbWFuZCIgbmFtZT0iSGVhdGluZ0RlbWFuZF9jMzRkIiBpZD0iYzM0ZDlhYWEtOTg5OC00ODM1LWJlMWItMTMwMzJlOGIwZWEwIj4KICAgICAgICA8Z2VvbWV0cnkgeHNpOnR5cGU9ImVzZGw6UG9pbnQiIGxhdD0iNTIuMDk2MDY2MDM2NDMyOTYiIGxvbj0iNS4xOTIwNzAwMDczMjQyMiIvPgogICAgICAgIDxwb3J0IHhzaTp0eXBlPSJlc2RsOkluUG9ydCIgaWQ9IjFmNjA0MDNjLTQ0YzYtNDdhYi04Zjk0LTAwMWEyYTc3ZjA3NCIgbmFtZT0iSW4iPgogICAgICAgICAgPHByb2ZpbGUgeHNpOnR5cGU9ImVzZGw6U2luZ2xlVmFsdWUiIHZhbHVlPSIzNjAuMCIgaWQ9ImFmOGU1ZDIzLWFlOTctNDdkZS05OGU5LTU0MmEwYmJhNzdhYiI+CiAgICAgICAgICAgIDxwcm9maWxlUXVhbnRpdHlBbmRVbml0IHhzaTp0eXBlPSJlc2RsOlF1YW50aXR5QW5kVW5pdFJlZmVyZW5jZSIgcmVmZXJlbmNlPSJjYzIyNGZhMC00YzQ1LTQ2YzAtOWM2Yy0yZGJhNDRhYWFhY2MiLz4KICAgICAgICAgIDwvcHJvZmlsZT4KICAgICAgICA8L3BvcnQ+CiAgICAgIDwvYXNzZXQ+CiAgICA8L2FyZWE+CiAgPC9pbnN0YW5jZT4KPC9lc2RsOkVuZXJneVN5c3RlbT4K",
    "rules": [
                {
                    "filter_by_asset_class": "ElectricityDemand",
                    "regionalize_by_parameter": "INHABITANTS"
                },
                {
                    "filter_by_asset_class": "Producer",
                    "regionalize_by_parameter": "AREA_LAND"
                },
                {
                    "filter_by_asset_class": "HeatingDemand",
                    "regionalize_by_parameter": "INHABITANTS"
                }
            ],
    "reg_config": {
        "path": "http://localhost:9210/",
        "endpoint": "regionalize/"
    }
}

res = requests.post(api_endpoint + '/model/initialize/' + model_run_id, json=post_body)
if res.ok:
    print("Endpoint /model/initialize ok!")
    result = res.json()
    print(result)
else:
    print("Endpoint /model/initialize not ok!")
    exit(1)

res = requests.get(api_endpoint + '/model/run/' + model_run_id)
if res.ok:
    print("Endpoint /model/run ok!")
    result = res.json()
    print(result)
else:
    print("Endpoint /model/run not ok!")
    print(res.json())
    exit(1)

res = requests.get(api_endpoint + '/model/status/' + model_run_id)
if res.ok:
    print("Endpoint /model/status ok!")
    result = res.json()
    print(result)
else:
    print("Endpoint /model/status not ok!")
    exit(1)

res = requests.get(api_endpoint + '/model/results/' + model_run_id)
if res.ok:
    print("Endpoint /model/results ok!")
    result = res.json()
    print(result)
else:
    print("Endpoint /model/results not ok!")
    exit(1)

res = requests.get(api_endpoint + '/model/remove/' + model_run_id)
if res.ok:
    print("Endpoint /model/remove ok!")
    result = res.json()
    print(result)
else:
    print("Endpoint /model/remove not ok!")
    exit(1)

