Feature: Validación de Formulario de Pago

    Scenario Outline: Validar pago con diferentes montos y métodos
        Given que el usuario accede al formulario de pago
        When ingresa el monto <monto> y selecciona el medio <medio>
        Then el sistema debería mostrar el mensaje "<resultado>"

        Examples: 
            | monto | medio                         | resultado                     |
            | 500   | Tarjeta                       | Pago procesado correctamente  |
            | -500  | Tarjeta                       | Monto debe ser mayor a cero   |
            | 0     | Efectivo                      | Monto debe ser mayor a cero   |
            | 500   | Transferencia                 | Pago procesado correctamente  |
            | 500   |                               | Medio de pago no seleccionado |

    