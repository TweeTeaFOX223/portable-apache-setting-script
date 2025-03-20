### 説明
Windows環境で、ディレクトリ内で完結するApacheのサーバーを即席で構築するためのバッチファイルです。   
  
Apacheのサーバーを構築したいディレクトリに、`1_setup.bat`と`2_run.bat`を設置、それぞれをダブルクリックや「右クリック→開く」等で実行すると使用できます。
  
「CやC++で作成したCGIを試すためにApacheサーバー単体が少しだけ必要」、「使い捨てのApacheのサーバーでちょっとだけ遊びたい」という時に役立ちます。本格的にApacheを動かす場合は、[Dockerでhttpdのコンテナを作る](https://www.docker.com/ja-jp/blog/how-to-use-the-apache-httpd-docker-official-image/)方がいいと思います。    
  
サーバーが必要なくなったら、生成される`Apache24`のディレクトリを丸ごと削除すればOKです。  
  
Apacheのバージョンは、Apache 2.4.63-250207 Win64です。Apache LoungeからDLします。  
https://www.apachelounge.com/download/  
***  
  
<br>  
  
### 1_setup.bat
ApacheのZIPをDLして`Apache24`のディレクトリに展開します。その後、`Apache24\conf\httpd.conf`の設定を変更します。
- ServerRootをディレクトリのパスに変更  
- 8080番ポートを使用  
- cgi_moduleを有効  
- `Apache24\cgi-bin\test.bat`にテスト用CGIを作成  
- `Apache24\cgi-bin`を`http://localhost:8080/cgi-bin/`に割当  
***  
  
<br>  
  
### 2_run.bat
`1_setup.bat`で構築したApacheのサーバーを起動します。サーバーを停止する場合はCtrl+Cを入力。  

サーバー起動時にブラウザで`http://localhost:8080/`と`http://localhost:8080/cgi-bin/test.bat`を自動で開きます。  
  
<br>  
  