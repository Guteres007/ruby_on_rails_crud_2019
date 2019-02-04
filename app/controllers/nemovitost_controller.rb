class NemovitostController < ApplicationController

    def seznam
        @nemovitosti = Nemovitost.all
    end
    
    def vytvorit
       @nemovitost = Nemovitost.new
       @nemovitost.tagy.build
    end
    
    def ulozit

        nemmovitost = NemovitostService.new(params) 
        if nemmovitost.ulozit(nemovitost_parametry)
         redirect_to nemovitosti_path
        else
            @nemovitost = Nemovitost.new
            @nemovitost.tagy.build
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
            @nemovitost = Nemovitost.find(params[:id])
            render :editovat
        end

    end
    private 

    def nemovitost_parametry
       params.require(:nemovitost).permit(:popis,:nadpis,tagy_attributes: [:id, :title])
    end
end
