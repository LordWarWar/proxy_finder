import base64,codecs,requests;

def sync_report_proxy(report_url,proxy):
  proxy_json={'':'','proxy':proxy};
  request=requests.post(url,proxy_json);
  request.raise_for_status();
  return request;
