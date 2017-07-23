




function setup() { 
  createCanvas(displayWidth, displayHeight);
 // canvas.parent('sketch-holder');
	background(0);
	ps = new PointSystem();

} 

function draw() { 
  
	ps.run();
	
	
}

function PointSystem() {
	
	this.p = new Point();
	this.p2 = new Point();

	
	this.points = [];
	
		for (var i = 0; i < 10; i++) {
		this.points.push(new Point());
	}
	
	this.connectors = [];

	
	this.checkDist = function() {
		
		
       					 this.ap1 = new Point();
       this.ap2 = new Point();
       
       //Loop through arrayList
        for (var i = 0; i < this.points.length; ++i) {
    
           for (var j = 0; j < this.points.length; ++j) {
       
           //Check that point is not checking against itself
             if (i != j) {
      
            
            //Compute Euclidean distance
             this.currentDist = this.p.distance(this.points[i], this.points[j]);

            //Setting smallestDist to be smallest distance found
            if (this.currentDist < this.smallestDist) {
			
                this.smallestDist = this.currentDist;
                this.ap1 = this.points[i];
                this.ap2 = this.points[j];
                
                
                //Creating a connector if the smallestDist is less than 150
                if (this.smallestDist < 325) {
      
                //Pass through points to create new line between them
                   this.connectors.push(new Connector(this.ap1, this.ap2));
      
                }
    
              }
     
            
          }
  
  
     //Remove first connector in arrayList if size exceeds 20
          if (this.connectors.length > 7) {
    
            this.connectors.splice(0, 1);
      
           }
  
   
   
   //connectors.add(new Connector(ap1, ap2));
   //Reseting 
   this.smallestDist = 800.;
   
   
  }
   
 }
  
		
	}
	
	
	
	this.run = function() {
		this.checkDist();
		
				for (var i = 0; i < this.points.length; i++) {
			this.points[i].update();
			
		}
		
		for (var i = 0; i < this.connectors.length; i++) {
			this.connectors[i].display();
			
		}
		
		
		
	}
	
};

function Point() {
	this.x = random(0, 200);
	this.y = random(0, 200);
	this.accX = random(-2, 2);
	this.accY = random(-2, 2);
	this.scaleR = 0.5;
	
	
	this.display = function() {
		this.ellipse(this.x, this.y, 5, 5);
	}
	
	this.update = function() {
		
		this.x += this.scaleR * this.accX;
		this.y += this.scaleR * this.accY;
	}
	
	this.distance = function(p, p2) {
		
		return sqrt( sq(p.x-p2.x) + sq(p.y-p2.y));
	}
	
};


function Connector(_p1, _p2) {
	this.p1 = _p1;
	this.p2 = _p2;
	
	this.display = function() {
		stroke(200, 1);
		line(this.p1.x, this.p1.y, this.p2.x, this.p2.y);
	}
	
	
};



