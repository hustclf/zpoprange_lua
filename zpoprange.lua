-- KEYS[1] zset key name
-- ARGV[1] score min
-- ARGV[2] score max
-- ARGV[3] batch size
local members = redis.call('ZRANGEBYSCORE', key[1], ARGV[1], ARGV[2], 'limit', 0, ARGV[3])
if next(members) ~= nil then
	redis.call('ZREM', key, unpack(members))
	return members
else
	return {}
end
