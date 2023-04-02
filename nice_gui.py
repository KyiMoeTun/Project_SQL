from nicegui import ui



def show_temperature():
    # You can replace this part with the actual logic to get the temperature of the city
    temperature_c = 25  # Example temperature in Celsius
    temperature_f = (temperature_c * 9/5) + 32  # Convert to Fahrenheit
    ui.label(f'Temperature: {temperature_c}°C / {temperature_f}°F')

# Create a label to display the greeting message
ui.label('Hello NiceGUI!')

# Create a button that, when clicked, calls the show_temperature function
ui.button('Show Temperature', on_click=show_temperature)

# Start the NiceGUI application
ui.run()
