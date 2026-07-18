   target_sources(${PROJECT_NAME} PRIVATE
       main.c
       stm32f1xx_hal.c
       stm32f1xx_hal_gpio.c
       # Thêm các file nguồn khác của bạn tại đây
   )

   target_include_directories(${PROJECT_NAME} PRIVATE .)
   