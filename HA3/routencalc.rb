@allRoutes = "A-B:5 ,B-C:4 ,C-D:8 ,D-E:6 ,A-D:5 ,C-E:2 ,E-B:3 ,A-E:7".split(',') 
@route = {} 

0.upto(@allRoutes.length - 1) do |i| 
  tmp = @allRoutes[i].split(':')   
  @route[tmp[0]] = tmp[1]          
end

def routeBerechnen(myRoute)         
  summe = 0
  myRoute = myRoute.split('-')      
  0.upto(myRoute.length - 2) do |i|

    tmp = @route[myRoute[i] + '-' + myRoute[i+1]].to_i   
    if(tmp == 0)                                         
      tmp = @route[myRoute[i+1] + '-' + myRoute[i]].to_i  
        if(tmp == 0)                                     
          return "No such route"                         
        end
    end
     summe += tmp                  
  end
  return summe                     
end

puts routeBerechnen("A-D-C")