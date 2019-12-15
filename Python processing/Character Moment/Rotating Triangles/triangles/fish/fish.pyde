def setup():
    fullScreen()
    noFill()
    strokeWeight(2)
    colorMode(HSB)
    
t = 0
# NUM_TRIS = 90

def draw():
    global t
    background(0)
    translate(width/2,height/2)
    NUM_TRIS = map(mouseX,0,width,3,120)
    for i in range(int(NUM_TRIS)):
        rotate(radians(360/NUM_TRIS))
        pushMatrix()
        translate(200,0)
        offset = map(mouseY,0,height,1,20)
        rotate(radians(t+offset*i*360/NUM_TRIS))
        stroke(3*i,255,255)
        tri(100)
        popMatrix()
    t += 0.5
    
def tri(length):
    ''' Draws an equilateral triangle of 
    given length around the center of 
    the triangle'''
    rect(0,length,
             -length*sqrt(3)/2,length*sqrt(3)/2,
             length*sqrt(3)/2,-length*sqrt(3)/2,
             length,0)
