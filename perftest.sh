host="fabmedical-550885.mongo.cosmos.azure.com"
username="fabmedical-550885"
password="YZyoUEGRlRddsWu6JJqO8WUz0SZpiAIpNMOUFhbst310TEPuOx2zwlpv3JcefLS5oF7LyEJz74ElvKfnK26Lig=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
