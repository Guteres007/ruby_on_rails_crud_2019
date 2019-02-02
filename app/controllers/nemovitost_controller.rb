class NemovitostController < ApplicationController

    def seznam
        @nemovitosti = Nemovitost.all
    end
    
    def vytvorit
       @nemovitost = Nemovitost.new
    end
    
    def ulozit

        nemmovitost = NemovitostService.new(params) 
        if nemmovitost.ulozit(nemovitost_parametry)
         redirect_to nemovitosti_path
        else
        render :vytvorit
        end
    end

    def editovat
        @nemovitost = Nemovitost.find(params[:id])
    end
   
    def update
         nemmovitost = NemovitostService.new(params) 
        if nemmovitost.update(nemovitost_parametry)
           redirect_to nemovitosti_path
        else
            render :ditovat
        end

    end
    private 

    def nemovitost_parametry
       params.require(:nemovitost).permit(:popis,:nadpis)
    end
end
