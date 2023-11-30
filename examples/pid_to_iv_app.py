import flet as ft
from core.gen3.tools.pid_to_iv_calculator import calculate_ivs


def main(page: ft.Page) -> None:
    pid_input = ft.TextField(
        label="PID",
        input_filter=ft.InputFilter("[^0-9A-Fa-f]", allow=False),
        max_length=8,
    )

    def generate(_):
        result_table.rows.clear()
        for result in calculate_ivs(int(pid_input.value or "0", 16)):
            result_table.rows.append(
                ft.DataRow(
                    cells=[
                        ft.DataCell(ft.Text(f"{result.get_seed():08X}")),
                        ft.DataCell(ft.Text(f"{result.get_method()}")),
                        ft.DataCell(ft.Text(f"{'/'.join(map(str, result.get_ivs()))}")),
                    ]
                )
            )
        page.update()

    generate_button = ft.ElevatedButton("Generate", on_click=generate)
    result_table = ft.DataTable(
        columns=[
            ft.DataColumn(ft.Text("Seed")),
            ft.DataColumn(ft.Text("Method")),
            ft.DataColumn(ft.Text("IVs")),
        ]
    )
    page.add(pid_input, generate_button, result_table)


ft.app(target=main)
