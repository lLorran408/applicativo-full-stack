# blueprints\delete.py
# Apaga o registro informado.
# Apenas marca com 'status="DEL"'

from flask import Blueprint, render_template

delete_bp = Blueprint('delete', __name__)


@delete_bp.route("/delete/<int:pad_id>")
def delete_page(pad_id):
    return render_template("delete.html")
