import tensorflow as tf


model = tf.saved_model.load("Harmonic_Mk11_M1_2D_gamma2/best_model")
infer = model.signatures["serving_default"]
print(infer.structured_input_signature)
print(infer.structured_outputs)
for var in model.variables:
    print(var.name, var.shape)

print("----")
for op in infer.graph.get_operations():
    print(op.name, op.type)
print("Model loaded successfully.")

print("----")
for var in model.variables:
    print(var.name)
    print(var.numpy())
