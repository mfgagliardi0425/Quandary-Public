package ast;

public class ReturnStmt extends Program {
    public ReturnStmt(Expr expr, Location loc) {
        super(expr, loc);
    }
}
