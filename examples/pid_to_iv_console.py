from core.gen3.tools.pid_to_iv_calculator import calculate_ivs

for result in calculate_ivs(0):
    print(
        f"Seed: {result.get_seed()} IVs: {'/'.join(map(str, result.get_ivs()))} Method: {result.get_method()}"
    )
