import time

def perform_task():
    start_time = time.time()
    while time.time() - start_time < 600:  # Работает 10 минут
        # Имитация нагрузки на CPU
        sum(i * i for i in range(10000))
        # Имитация потребления памяти
        data = [x for x in range(100000)]
        time.sleep(0.5)  # Уменьшение нагрузки между интервалами

perform_task()