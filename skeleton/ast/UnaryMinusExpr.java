package ast;

public class UnaryMinusExpr extends Expr {
    public final Expr expr;
    public UnaryMinusExpr(Expr expr, Location loc) {
        super(loc);
        this.expr = expr;
    }
}
