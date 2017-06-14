iNum="5400"
while [ "$iNum" -ge "0" ]
do
EST_CONNS=`netstat -an |grep "10.53.126.14" |grep "ESTABLISHED" |wc -l`
TW_CONNS=`netstat -an |grep "10.53.126.14" |grep "TIME_WAIT" |wc -l`
CL_CONNS=`netstat -an |grep "10.53.126.14" |grep "CLOSED" |wc -l`
FW_CONNS=`netstat -an |grep "10.53.126.14" |grep "FIN_WAIT" |wc -l`
CW_CONNS=`netstat -an |grep "10.53.126.14" |grep "CLOSE_WAIT" |wc -l`
echo "$1 - 10.53.126.14  | " `date` " | EST="$EST_CONNS" | TW="$TW_CONNS" | CL="$CL_CONNS" | FW="$FW_CONNS" | CW="$CW_CONNS >>Netstat_$1.log
EST_CONNS=`netstat -an |grep "10.53.126.12" |grep "ESTABLISHED" |wc -l`
TW_CONNS=`netstat -an |grep "10.53.126.12" |grep "TIME_WAIT" |wc -l`
CL_CONNS=`netstat -an |grep "10.53.126.12" |grep "CLOSED" |wc -l`
FW_CONNS=`netstat -an |grep "10.53.126.12" |grep "FIN_WAIT" |wc -l`
CW_CONNS=`netstat -an |grep "10.53.126.12" |grep "CLOSE_WAIT" |wc -l`
echo "$1 - 10.53.126.12  | " `date` " | EST="$EST_CONNS" | TW="$TW_CONNS" | CL="$CL_CONNS" | FW="$FW_CONNS" | CW="$CW_CONNS >> Netstat_$1.log
sleep 2
iNum=`expr $iNum - 1`
done
