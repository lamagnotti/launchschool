class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

# This is going to print out "You will <something>". The <something> will be
# filled in with one of the three strings from our choices method in the RoadTrip
# class. Since trip is a RoadTrip object and inherits methods from Oracle, the lookup
# path makes a stop first in our RoadTrip class to check if there's a method called choices.
# Indeed there is! Our RoadTrip choices has priority over our Oracle choices method.
