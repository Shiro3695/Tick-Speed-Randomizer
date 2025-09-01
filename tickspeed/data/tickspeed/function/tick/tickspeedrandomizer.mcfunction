#stores random value in speed area
execute store result storage tick:tick_speed speed int 1 run random value 20..250

#runs the tickspeedchange function with tick speed
function tickspeed:tick/tickspeedchanger with storage tick:tick_speed

execute store result storage tick:tick_speed 3count float 297 run data get storage tick:tick_speed speed
execute store result storage tick:tick_speed 2count float 298 run data get storage tick:tick_speed speed
execute store result storage tick:tick_speed 1count float 299 run data get storage tick:tick_speed speed

#runs the countdownscheduler function with tick speed to then scale the tick speeds for each count down
function tickspeed:tick/countdownscheduler with storage tick:tick_speed

#scales the delay time with the tick speed to get 5 minutes exactly and stores in delay area
execute store result storage tick:tick_speed delay int 300 run data get storage tick:tick_speed speed

#runs the tickdelayfunction with delay
function tickspeed:tick/delay with storage tick:tick_speed

