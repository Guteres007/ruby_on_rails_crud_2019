class NemovitostController < ApplicationController

    def seznam
        @nemovitosti = Nemovitost.all
    end
    
    def vytvorit
       @nemovitost = Nemovitost.new
    end
    
    def ulozit
        if Nemovitost.create(nemovitost_parametry)
         redirect_to nemovitosti_path
        else
        render :vytvorit
        end
    end

    def editovat
        @nemovitost = Nemovitost.find(params[:id])
    end
   
    def update
        nemovitost = Nemovitost.find(params[:id])
       if nemovitost.update(nemovitost_parametry)
        redirect_to nemovitosti_path
       else
        render :editovat
       end
  

    end
    private 

    def nemovitost_parametry
       params.require(:nemovitost).permit(:popis,:nadpis)
    end
end
