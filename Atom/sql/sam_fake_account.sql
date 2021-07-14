select
t1.id,
t1.broker_id,
t1.broker_id,
t1.user_id,

(case when t2.user_type=0 then 'Demo账户'
      when t2.user_type=1 then '交易员'
      when t2.user_type=2 then '跟随者' end
    ) as user_type,

(case when t1.status=1 then '待核查'
      when t1.status=2 then '已处理'
      when t1.status=3 then '人工判断无需处理' end
    ) as status,

t1.account_name,
t1.group_name,
t1.create_time,
t1.update_time
from sam.fake_account as t1  left join account.user_accounts as t2
on t1.broker_id=t2.broker_id and t1.user_id=t2.user_id and t1.account=t2.mt4_account
