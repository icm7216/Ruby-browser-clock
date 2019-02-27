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
  
  def self.maf(data, tap = 15)
    @tap = tap
    @n ||= 0
    @xn ||= Array.new(@tap, 0)
    @xn[@n] = data
    @n = (@n + 1) % @tap
    @xn.sum / @tap
  end

  def self.view(time, fps)
    @ctx.clearRect(0, 0, 800, 200)
    @ctx.fillStyle = 'rgb(252,167,39)'
    @ctx.font = '30px consolas'
    @ctx.fillText(fps, 10, 30)
    @ctx.font = '100px consolas'
    @ctx.fillText(time, 70, 130)
  end

  def self.update
    render = -> do
      $$[:requestAnimationFrame][render]
      cur_t = Time.now
      fps_t = 1.0 / (cur_t.to_f - @pre_t.to_f)
      fps = "FPS: #{sprintf('%.2f', maf(fps_t))}"
      time = cur_t.strftime('%H:%M:%S.%L')
      @pre_t = cur_t
      view(time, fps)      
    end
    render[]
  end
end

Clock.update
