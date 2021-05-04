/* gcalc-2.vapi generated by valac 0.52.2.48-318df, do not modify. */

[CCode (gir_namespace = "GCalc", gir_version = "2")]
namespace GCalc {
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Assign : GCalc.Expression, GCalc.MathOperator, GCalc.MathBinaryOperator, GCalc.MathAssign {
		public Assign ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Constant : GCalc.Expression, GCalc.MathConstant, GCalc.MathConstantNumber, GCalc.MathConstantComplex {
		public Constant ();
		public Constant.complex (global::double real, global::double imag);
		public Constant.double (global::double val);
		public Constant.integer (int val);
		public Constant.unsigned_integer (uint val);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Division : GCalc.Expression, GCalc.MathOperator, GCalc.MathBinaryOperator, GCalc.MathDivision {
		public Division ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Equation : GCalc.Expression, GCalc.MathEquation {
		public Equation ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class EquationManager : GLib.Object, GCalc.MathEquationManager {
		public EquationManager ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class ErrorExpression : GCalc.Expression {
		public ErrorExpression ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class ErrorResult : GLib.Object, GCalc.MathResult, GCalc.MathErrorResult {
		public ErrorResult (string msg);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Expression : GLib.Object, GCalc.MathExpression {
		public Expression ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class ExpressionContainer : Gee.ArrayList<GCalc.MathExpression>, GLib.ListModel {
		public ExpressionContainer ();
		public override bool add (GCalc.MathExpression exp);
		public GCalc.MathExpression? find (GCalc.MathExpression exp);
		public GCalc.MathExpression? find_named (string name);
		public GLib.Object? get_object (uint position);
		public override bool remove (GCalc.MathExpression exp);
		public override GCalc.MathExpression remove_at (int index);
		public weak GCalc.MathExpression parent { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class ExpressionHashMap : Gee.HashMap<uint,GCalc.MathExpression> {
		public ExpressionHashMap ();
		public void add (GCalc.MathExpression exp);
		public GCalc.MathExpression? find_named (string name);
		public void remove (GCalc.MathExpression exp);
		public weak GCalc.MathExpression parent { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Function : GCalc.Expression, GCalc.MathFunction, GCalc.Hashable {
		public Function ();
		public Function.with_name (string name, int nparams);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionAcos : GCalc.Function {
		public FunctionAcos ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionAcosh : GCalc.Function {
		public FunctionAcosh ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionAsin : GCalc.Function {
		public FunctionAsin ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionAsinh : GCalc.Function {
		public FunctionAsinh ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionAtan : GCalc.Function {
		public FunctionAtan ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionAtanh : GCalc.Function {
		public FunctionAtanh ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionCos : GCalc.Function {
		public FunctionCos ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionCosh : GCalc.Function {
		public FunctionCosh ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionExp : GCalc.Function {
		public FunctionExp ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionLog : GCalc.Function {
		public FunctionLog ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionSin : GCalc.Function {
		public FunctionSin ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionSinh : GCalc.Function {
		public FunctionSinh ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionSqrt : GCalc.Function {
		public FunctionSqrt ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionTan : GCalc.Function {
		public FunctionTan ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class FunctionTanh : GCalc.Function {
		public FunctionTanh ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Group : GCalc.Expression, GCalc.MathGroup {
		public Group ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Minus : GCalc.Expression, GCalc.MathOperator, GCalc.MathBinaryOperator, GCalc.MathMinus {
		public Minus ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Multiply : GCalc.Expression, GCalc.MathOperator, GCalc.MathBinaryOperator, GCalc.MathMultiply {
		public Multiply ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Parameter : GCalc.Variable, GCalc.MathParameter {
		public Parameter (string name);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Parser : GLib.Object {
		public enum TokenType {
			NONE,
			EOF,
			IDENTIFIER,
			INTEGER_LITERAL,
			REAL_LITERAL,
			STAR,
			PLUS,
			DIV,
			MINUS,
			ASSIGN,
			OPEN_PARENS,
			CLOSE_PARENS,
			CARRET,
			CLOSE_BRACE,
			CLOSE_BRACKET,
			OPEN_BRACE,
			OPEN_BRACKET,
			STRING_LITERAL,
			OP_AND,
			OP_COALESCING,
			OP_DEC,
			OP_EQ,
			OP_GE,
			OP_GT,
			OP_INC,
			OP_LE,
			OP_LT,
			OP_NE,
			OP_NEG,
			OP_OR,
			OP_PTR,
			OP_SHIFT_LEFT,
			SEMICOLON,
			TILDE,
			COLON,
			COMMA,
			DOUBLE_COLON,
			DOT,
			ELLIPSIS,
			INTERR,
			HASH,
			CURRENCY_SYMBOL
		}
		public Parser ();
		public void parse (string str, GCalc.MathEquationManager eqman) throws GLib.Error;
		protected GCalc.Parser.TokenType read_token ();
		protected string token_to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Plus : GCalc.Expression, GCalc.MathOperator, GCalc.MathBinaryOperator, GCalc.MathPlus {
		public Plus ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Polynomial : GCalc.Expression, GCalc.MathPolynomial {
		public Polynomial ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Pow : GCalc.Expression, GCalc.MathOperator, GCalc.MathPow {
		public Pow ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Result : GLib.Object, GCalc.MathResult {
		public Result (GCalc.MathExpression exp);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Solver : GLib.Object {
		public Solver ();
		public void add_expression (string exp) throws GLib.Error;
		public GCalc.MathResult solve (string str) throws GLib.Error;
		public GCalc.MathEquationManager equation_manager { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Term : GCalc.Expression, GCalc.MathTerm {
		public Term ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class Variable : GCalc.Expression, GCalc.MathVariable, GCalc.Hashable {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Hashable : GLib.Object {
		public abstract uint hash ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathAssign : GLib.Object, GCalc.MathExpression, GCalc.MathOperator, GCalc.MathBinaryOperator {
		public GCalc.MathExpression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathBinaryOperator : GLib.Object, GCalc.MathExpression, GCalc.MathOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathConstant : GLib.Object, GCalc.MathExpression {
		public abstract GCalc.MathConstant add (GCalc.MathConstant c);
		public abstract GCalc.MathConstant divide (GCalc.MathConstant c);
		public abstract GCalc.MathConstant multiply (GCalc.MathConstant c);
		public abstract GCalc.MathConstant neg ();
		public abstract GCalc.MathConstant pow (GCalc.MathConstant c);
		public abstract GCalc.MathConstant subtract (GCalc.MathConstant c);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathConstantComplex : GLib.Object, GCalc.MathExpression, GCalc.MathConstant {
		public abstract double imag ();
		public abstract double real ();
		public abstract void zero ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathConstantNumber : GLib.Object, GCalc.MathExpression, GCalc.MathConstant {
		public abstract double value ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathDivision : GLib.Object, GCalc.MathExpression, GCalc.MathOperator, GCalc.MathBinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathEquation : GLib.Object, GCalc.MathExpression {
		public abstract GCalc.ExpressionHashMap variables { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathEquationManager : GLib.Object {
		public virtual GCalc.MathVariable find_variable (string name);
		public abstract GCalc.ExpressionContainer equations { get; }
		public abstract GCalc.ExpressionContainer functions { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathErrorResult : GLib.Object, GCalc.MathResult {
		public abstract string message { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathExpression : GLib.Object {
		public abstract GCalc.MathResult solve ();
		public abstract string to_string ();
		public abstract GCalc.ExpressionContainer expressions { get; }
		public abstract weak GCalc.MathExpression parent { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathFunction : GLib.Object, GCalc.MathExpression {
		public abstract GCalc.MathExpression evaluate () throws GLib.Error;
		public virtual bool verify_params () throws GLib.Error;
		public abstract bool closed { get; set; }
		public abstract uint n_params { get; set construct; }
		public abstract string name { get; set construct; }
		public abstract GCalc.ExpressionContainer param_types { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathGroup : GLib.Object, GCalc.MathExpression {
		public enum Level {
			ONE,
			TWO,
			THREE
		}
		public virtual GCalc.MathExpression evaluate () throws GLib.Error;
		public abstract bool closed { get; set; }
		public abstract GCalc.MathGroup.Level level { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathMinus : GLib.Object, GCalc.MathExpression, GCalc.MathOperator, GCalc.MathBinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathMultiply : GLib.Object, GCalc.MathExpression, GCalc.MathOperator, GCalc.MathBinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathOperator : GLib.Object, GCalc.MathExpression {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathParameter : GLib.Object, GCalc.MathExpression, GCalc.MathVariable {
		public abstract GLib.Value? get_value ();
		public abstract void set_value (GLib.Value? val) throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathPlus : GLib.Object, GCalc.MathExpression, GCalc.MathOperator, GCalc.MathBinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathPolynomial : GLib.Object, GCalc.MathExpression {
		public virtual GCalc.MathExpression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathPow : GLib.Object, GCalc.MathExpression, GCalc.MathOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathResult : GLib.Object {
		public abstract string to_string ();
		public abstract GCalc.MathExpression expression { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathTerm : GLib.Object, GCalc.MathExpression {
		public virtual GCalc.MathExpression add (GCalc.MathTerm t) throws GLib.Error;
		public virtual GCalc.MathExpression evaluate () throws GLib.Error;
		public static GCalc.MathExpression evaluate_constants (GCalc.MathConstant c1, GCalc.MathConstant c2, GCalc.MathOperator op) throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathVariable : GLib.Object, GCalc.MathExpression {
		public virtual GCalc.MathExpression evaluate () throws GLib.Error;
		public abstract GCalc.MathVariable bind { get; set; }
		public virtual bool binded { get; }
		public abstract string name { get; set construct; }
		public abstract GCalc.MathConstant value { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain AssigError {
		INVALID_STRUCTURE_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain FunctionError {
		INVALID_PARAMETERS_ERROR,
		INVOCATION_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain GroupError {
		INVALID_POLYNOMIAL,
		INVALID_INTERNAL_TERM
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain ParserError {
		INVALID_TOKEN_ERROR,
		INVALID_EXPRESSION_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain SolverError {
		EXPRESSION_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain TermError {
		INVALID_OPERATOR,
		EVALUATION_FAIL
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain VariableError {
		INVALID_PARENT,
		INVALID_EXPRESSION_DEFINITION,
		EVALUATION_FAIL
	}
}
