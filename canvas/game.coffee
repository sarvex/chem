canvas = document.getElementById("game")
engine = new Engine(canvas)
batch = new Engine.Batch()
sprite_man = new Engine.Sprite("still", batch: batch, pos: new Vec2d(200, 200))
engine.on 'update', (dt, dx) ->
engine.on 'draw', (context) ->
  context.clearRect 0, 0, engine.size.x, engine.size.y
  engine.drawBatch batch
  context.fillText "#{engine.fps} fps", 0, engine.size.y
engine.on 'mousedown', (pos) -> console.log pos.x, pos.y
engine.start()
