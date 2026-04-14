import paho.mqtt.client as mqtt

def on_message(client, userdata, msg):
    print(f"받은 데이터: {msg.payload.decode()}")

client = mqtt.Client()
client.on_message = on_message
client.connect("localhost", 1883)
client.subscribe("factory/#")
client.loop_forever()
