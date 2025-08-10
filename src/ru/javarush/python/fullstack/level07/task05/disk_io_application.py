import os

# Function to generate dummy disk I/O operations
def generate_disk_io_operations():
    filename = "dummy_file.txt"
    with open(filename, "w") as f:
        for i in range(1000000):  # Adjust number of iterations for more I/O
            f.write(f"This is line {i}\n")
    os.remove(filename)

generate_disk_io_operations()