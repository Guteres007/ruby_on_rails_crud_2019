class NemovitostService

    def initialize(params)
       @params = params
    end

    def update(params)
        nemovitost = Nemovitost.find(@params[:id])
        update = nemovitost.update(params)
        if update
            true
        else
            false
        end
    end
   
    def ulozit(params)
       nemovitost = Nemovitost.create(params)
        if nemovitost.valid?
        true
       else
        false
       end
    end
 

  end