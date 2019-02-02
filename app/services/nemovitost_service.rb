class NemovitostService

    def initialize(params)
       @params = params
    end

    def update(params)
        nemovitost = Nemovitost.find(@params[:id])
        if nemovitost.update(params)
            true
        else
            false
        end
    end
   
    def ulozit(params)
       if Nemovitost.create(params)
        true
       else
        false
       end
    end
 

  end