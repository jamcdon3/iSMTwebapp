class Item < ApplicationRecord
  validates :tappiWet1, :tappiDry1, :outsideWet1, :outsideDry1, :insideWet1, :insideDry1, :hoodWet1, :hoodDry1,
      :tappiWet2, :tappiDry2, :outsideWet2, :outsideDry2, :insideWet2, :insideDry2, :hoodWet2, :hoodDry2,
      :tappiWet3, :tappiDry3, :outsideWet3, :outsideDry3, :insideWet3, :insideDry3, :hoodWet3, :hoodDry3,
      :tempPap10, :tempPap11, :tempPap12, :tempPap13, :tempPap14, :tempPap15, :tempPap16, :tempPap17, :tempPap18,
      :tempDry11, :tempDry12, :tempDry13, :tempDry14, :tempDry15, :tempDry16, :tempDry17, :tempDry18,
      :tempPap20, :tempPap21, :tempPap22, :tempPap23, :tempPap24, :tempPap25, :tempPap26, :tempPap27, :tempPap28,
      :tempDry21, :tempDry22, :tempDry23, :tempDry24, :tempDry25, :tempDry26, :tempDry27, :tempDry28,
      :tempPap230, :tempPap31, :tempPap32, :tempPap33, :tempPap34, :tempPap35, :tempPap36, :tempPap37, :tempPap38,
      :tempDry31, :tempDry32, :tempDry33, :tempDry34, :tempDry35, :tempDry36, :tempDry37, :tempDry38,
      :enterConsist, :enterMoist, :leaveMoist, :speed, :trimWidth, :basisWeight, :steamPressure,
      :steamReq, :measuredCond, presence: true, numericality: { only_integer: true, message: "Only integers accepted." }
end
