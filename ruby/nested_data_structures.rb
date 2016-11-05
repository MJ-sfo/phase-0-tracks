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

  pastors: [
      Dave: {
        kids: 3,
        worship_ld: TRUE,
        degree: TRUE
      },
      Samantha: {
        kids: 0,
        worship_ld: FALSE,
        degree: TRUE
      }
  ]
}  

p Church[:worship][:instuments][:guitars]
Church[:worship][:sunday_school].reverse_each {|x| print x, ",  "}
