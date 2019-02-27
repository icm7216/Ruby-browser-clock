# app/clock.rb
require 'opal'
require 'browser'
require 'browser/interval'
require 'browser/canvas'
require 'native'
# require 'console'

module Clock
  @canvas = Native(`document.getElementById('canvas')`)
  @ctx = @canvas.getContext('2d')
  @canvas.height = '200'
  @canvas.width = '800'
  @canvas.style.backgroundColor = 'rgb(3,21,192)'
  
  def self.view(time)
    @ctx.clearRect(0, 0, 800, 200)
    @ctx.fillStyle = 'rgb(252,167,39)'
    @ctx.font = '100px consolas'
    @ctx.fillText(time, 70, 130)
  end

  def self.update
    render = -> do
      $$[:requestAnimationFrame][render]
      cur_t = Time.now
      time = cur_t.strftime('%H:%M:%S.%L')
      view(time)
    end
    render[]
  end
end

Clock.update
