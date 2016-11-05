Church = {
  worship: {
    instuments: {
      guitars: 4,
      drums: 2,
      violen: 1,
      base: 3
    },
    sunday_school: [
      "teachers",
      "paint",
      "candy"
    ]
  },  

  pastors: {
      dave: {
        kids: 3,
        worship_leader: TRUE,
        degree: TRUE
      },
      samantha: {
        kids: 0,
        worship_leader: FALSE,
        degree: FALSE
      }
  }
}  

p Church[:worship][:instuments][:guitars]
Church[:worship][:sunday_school].reverse_each {|x| print x, ",  "}
puts "All about pastor Dave: #{Church[:pastors][:dave][:worship_leader] } !"
if Church[:pastors][:samantha][:degree] == TRUE
  p "Our leader done B educated!"
end
if Church[:pastors][:samantha][:degree].eql?(Church[:pastors][:dave][:degree] )
  p "both have degrees"
else
  p "only one has degrees"
end
