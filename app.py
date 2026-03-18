# app.py
import time
import datetime

def main():
    print("🐳 Programme Python dans Docker !")
    print(f"Démarré à : {datetime.datetime.now()}")
    print("-" * 40)

    compteur = 0
    while True:
        compteur += 1
        print(f"[{compteur}] En cours... {datetime.datetime.now().strftime('%H:%M:%S')}")
        time.sleep(2)

if __name__ == "__main__":
    main()