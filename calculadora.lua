

local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )


local pegarValor, apagar, calcular
local valor = "" 

  function pegarValor(event)     
      if ("began" == event.phase  ) then              
          local btn = event.target
             
            valor = valor..btn:getLabel()
            txtCalculo.text = string.sub(valor,1,13)
                      
      end
    return true
  end
 

  function apagar(event)
    if ("began" == event.phase) then
              txtCalculo.text = "0"
              valor = ""
              
    end 
   
    return true
  end
  
  function apagar_um(event)
   
     if ( "began" == event.phase ) then
            s = txtCalculo.text                               
            txtCalculo.text = string.sub(s,1,string.len(txtCalculo.text) - 1)
            valor = ""
            
            if txtCalculo.text == "" then
              txtCalculo.text = "0"
            end
            
         
      end
    return true
  end
  
 
  function calcular(event)
      if ( "began" == event.phase) then
          local btn = event.target
          
          local calc = loadstring("return " .. valor)
           
         if (pcall(calc)) then            
            
            txtCalculo.text = tostring(calc() or "0")
            txtCalculo.text = string.sub(txtCalculo.text,1,13) 
            valor = tostring( calc() or "" ) 
         else
            txtCalculo.text = "0"
            valor = ""   
        end
       end
    return true
  end
  
  
  
  function positionX(x)
    position = display.contentWidth - x
    
    return position
  end
  
  function positionY(y)
    position = display.contentHeight - y
    
    return position
  end




function scene:create( event )

    local sceneGroup = self.view    
   

    background = display.newRect( 0, 0, display.contentWidth, display.contentHeight+50)
    background.anchorX = 0
    background.anchorY = 0
    background.x= 0
    background.y = 0
    background:setFillColor(0.1)

    btCor = { default={ 0.80, 0.80, 0.80 }, over={0.90,0.90,0.90} }
    txCor = { default={0,0,0 },over={0.12,0.12,0.12} }
    funcCor = { default={ 0.221, 0.160, 0.221 }, over={0.255, 0.204, 0.255} } 
    txfunc = { default={1,1,1 },over={1,1,1} }
  
    txtCalculo = display.newText("0", positionX(20), 130,  native.systemFont, 40  )
    txtCalculo.anchorX = 40
  
                        local btn = {   
   
                           widget.newButton({
                              label = "7",
                              name = "7",
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(280),
                              y = positionY(260),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                             
                          }),
                        
                         
                           widget.newButton({
                              label = "8",
                              name = "8",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(200),
                              y = positionY(260),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                              
                          }),
                        
                         widget.newButton({
                              label = "9",
                              name = "9",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(120),
                              y = positionY(260),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent =pegarValor
                          }),
                        
                          
                        
                         widget.newButton({
                              label = "4",
                              name = "4",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(280),
                              y = positionY(195),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                          
                        widget.newButton({
                              label = "5",
                              name = "5",    
                              shape = "roundedRect",
                               width = 75,
                              height = 60,
                              x =positionX(200),
                              y = positionY(195),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                         widget.newButton({
                              label = "6",
                              name = "6",
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(120),
                              y = positionY(195),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                         
                        
                         widget.newButton({
                              label = "1",
                              name = "1",
                              shape = "roundedRect",
                               width = 75,
                              height = 60,
                              x =positionX(280),
                              y = positionY(130),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                          
                        widget.newButton({
                              label = "2",
                              name = "2",
                              shape = "roundedRect",
                               width = 75,
                              height = 60,
                              x =positionX(200),
                              y = positionY(130),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                        widget.newButton({
                              label = "3",
                              name = "3",
                              shape = "roundedRect",
                               width = 75,
                              height = 60,
                              x =positionX(120),
                              y = positionY(130),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                       
                        widget.newButton({
                              label = "0",
                              name = "0",
                              shape = "roundedRect",
                              width = 155,
                              height = 60,
                              x =positionX(240),
                              y = positionY(65),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }), 
                           
                        widget.newButton({
                              label = "/",
                              name = "/",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(40),
                              y = positionY(260),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor  ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                         widget.newButton({
                              label = "-",
                              name = "-",    
                              shape = "roundedRect",
                               width = 75,
                              height = 60,
                              x =positionX(40),
                              y = positionY(195),
                              font = native.systemFont,
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor  ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                          
                         widget.newButton({
                              label = "*",
                              name = "*",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(40),
                              y = positionY(130),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor  ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                         widget.newButton({
                              label = "+",
                              name = "+",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(40),
                              y = positionY(65),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                          widget.newButton({
                              label = ".",
                              name = ".",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(120),
                              y = positionY(65),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = btCor,
                              labelColor = txCor,
                              touchpoint = true,
                              onEvent = pegarValor
                          }),
                        
                         widget.newButton({
                              label = "=",
                              name = "=",    
                              shape = "roundedRect",
                             width = 155,
                              height = 60,
                              x =positionX(80),
                              y = positionY(0),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor  ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = calcular
                          }),
                        
                          widget.newButton({
                              label = "CE",
                              name = "CE",    
                              shape = "roundedRect",
                              width = 75,
                              height = 60,
                              x =positionX(280),
                              y = positionY(0),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor  ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = apagar
                          }),
                        
                        widget.newButton({
                            
                              shape = "roundedRect",
                             
                              width = 75,
                              height = 60,
                              x =positionX(200),
                              y = positionY(0),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor  ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = apagar_um
                              
                          }),
                        
                       widget.newButton({   
                              name = "seta",                          
                              defaultFile = "img/seta.png",
                              width = 32,
                              height = 32,
                              x =positionX(200),
                              y = positionY(0),
                              font = native.systemFont,
                              fontSize = 24,
                              fillColor = funcCor  ,
                              labelColor = txfunc,
                              touchpoint = true,
                              onEvent = apagar_um
                          })

                        
                      }
                      

end


 scene:addEventListener( "create", scene )
return scene
