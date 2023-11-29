from core.gen3.tools.pid_to_iv_calculator import calculate_ivs

for x in calculate_ivs(0):
    print(
        f"Seed: {x.get_seed()} IVs: {'/'.join(map(str, x.get_ivs()))} Method: {x.get_method()}"
    )
