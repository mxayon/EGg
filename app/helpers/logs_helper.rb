module LogsHelper
  def learners_by_starting_mood
  line_chart @learners.group(:starting_mood).count, height: '500px', library: {
    title: {text: 'Logs by Mood', x: -20},
    yAxis: {
       allowDecimals: false,
       title: {
           text: 'Mood count'
       }
    },
    xAxis: {
       title: {
           text: 'Date'
       }
    }
  }
  end
end
