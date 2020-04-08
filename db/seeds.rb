# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.create([{ email: 'admin@ncsu.edu', password: 'password', admin: 1 }])
User.create([{ email: 'user@ncsu.edu', password: 'password', admin: 0 }])
Item.create([{ tappiWet1: 2, tappiDry1: 2, outsideWet1: 2, outsideDry1: 2, insideWet1: 2, insideDry1: 2,
               hoodWet1: 2, hoodDry1: 2, tappiWet2: 2, tappiDry2: 2, outsideWet2: 2, outsideDry2: 2, insideWet2: 2,
               insideDry2: 2, hoodWet2: 2, hoodDry2: 2, tappiWet3: 2, tappiDry3: 2, outsideWet3: 2, outsideDry3: 2,
               insideWet3: 2, insideDry3: 2, hoodWet3: 2, hoodDry3: 2, tempPap10: 2, tempPap11: 2, tempPap12: 2,
               tempPap13: 2, tempPap14: 2, tempPap15: 2, tempPap16: 2, tempPap17: 2, tempPap18: 2, tempDry11: 2,
               tempDry12: 2, tempDry13: 2, tempDry14: 2, tempDry15: 2, tempDry16: 2, tempDry17: 2, tempDry18: 2,
               tempPap20: 2, tempPap21: 2, tempPap22: 2, tempPap23: 2, tempPap24: 2, tempPap25: 2, tempPap26: 2,
               tempPap27: 2, tempPap28: 2, tempDry21: 2, tempDry22: 2, tempDry23: 2, tempDry24: 2, tempDry25: 2,
               tempDry26: 2, tempDry27: 2, tempDry28: 2, tempPap230: 2, tempPap31: 2, tempPap32: 2, tempPap33: 2,
               tempPap34: 2, tempPap35: 2, tempPap36: 2, tempPap37: 2, tempPap38: 2, tempDry31: 2, tempDry32: 2,
               tempDry33: 2, tempDry34: 2, tempDry35: 2, tempDry36: 2, tempDry37: 2, tempDry38: 2, enterConsist: 2,
               enterMoist: 2, leaveMoist: 2, speed: 2, trimWidth: 2, basisWeight: 2, steamPressure: 2, steamReq: 2, measuredCond: 2 }])

