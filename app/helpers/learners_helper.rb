module LearnersHelper
  def sporters_by_age
  bar_chart @learners.group(:age).count, height: '500px', library: {
    title: {text: 'Learners by age', x: -20},
    yAxis: {
       allowDecimals: false,
       title: {
           text: 'Ages count'
       }
    },
    xAxis: {
       title: {
           text: 'Age'
       }
    }
  }
  end
end
