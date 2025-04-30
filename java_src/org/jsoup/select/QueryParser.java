package org.jsoup.select;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.g0;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.TokenQueue;
import org.jsoup.select.CombiningEvaluator;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Selector;
import org.jsoup.select.StructuralEvaluator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class QueryParser {
    private List<Evaluator> evals = new ArrayList();
    private String query;
    private TokenQueue tq;
    private static final String[] combinators = {",", SimpleComparison.GREATER_THAN_OPERATION, "+", "~", " "};
    private static final Pattern NTH_AB = Pattern.compile("((\\+|-)?(\\d+)?)n(\\s*(\\+|-)?\\s*\\d+)?", 2);
    private static final Pattern NTH_B = Pattern.compile("(\\+|-)?(\\d+)");

    private QueryParser(String str) {
        this.query = str;
        this.tq = new TokenQueue(str);
    }

    private void allElements() {
        this.evals.add(new Evaluator.AllElements());
    }

    private void byAttribute() {
        TokenQueue tokenQueue = new TokenQueue(this.tq.chompBalanced('[', ']'));
        String consumeToAny = tokenQueue.consumeToAny(SimpleComparison.EQUAL_TO_OPERATION, "!=", "^=", "$=", "*=", "~=");
        Validate.notEmpty(consumeToAny);
        tokenQueue.consumeWhitespace();
        if (tokenQueue.isEmpty()) {
            if (consumeToAny.startsWith("^")) {
                this.evals.add(new Evaluator.AttributeStarting(consumeToAny.substring(1)));
            } else {
                this.evals.add(new Evaluator.Attribute(consumeToAny));
            }
        } else if (tokenQueue.matchChomp(SimpleComparison.EQUAL_TO_OPERATION)) {
            this.evals.add(new Evaluator.AttributeWithValue(consumeToAny, tokenQueue.remainder()));
        } else if (tokenQueue.matchChomp("!=")) {
            this.evals.add(new Evaluator.AttributeWithValueNot(consumeToAny, tokenQueue.remainder()));
        } else if (tokenQueue.matchChomp("^=")) {
            this.evals.add(new Evaluator.AttributeWithValueStarting(consumeToAny, tokenQueue.remainder()));
        } else if (tokenQueue.matchChomp("$=")) {
            this.evals.add(new Evaluator.AttributeWithValueEnding(consumeToAny, tokenQueue.remainder()));
        } else if (tokenQueue.matchChomp("*=")) {
            this.evals.add(new Evaluator.AttributeWithValueContaining(consumeToAny, tokenQueue.remainder()));
        } else if (tokenQueue.matchChomp("~=")) {
            this.evals.add(new Evaluator.AttributeWithValueMatching(consumeToAny, Pattern.compile(tokenQueue.remainder())));
        } else {
            throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.query, tokenQueue.remainder());
        }
    }

    private void byClass() {
        String consumeCssIdentifier = this.tq.consumeCssIdentifier();
        Validate.notEmpty(consumeCssIdentifier);
        this.evals.add(new Evaluator.Class(consumeCssIdentifier.trim().toLowerCase()));
    }

    private void byId() {
        String consumeCssIdentifier = this.tq.consumeCssIdentifier();
        Validate.notEmpty(consumeCssIdentifier);
        this.evals.add(new Evaluator.Id(consumeCssIdentifier));
    }

    private void byTag() {
        String consumeElementSelector = this.tq.consumeElementSelector();
        Validate.notEmpty(consumeElementSelector);
        if (consumeElementSelector.contains("|")) {
            consumeElementSelector = consumeElementSelector.replace("|", ":");
        }
        this.evals.add(new Evaluator.Tag(consumeElementSelector.trim().toLowerCase()));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void combinator(char r11) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.QueryParser.combinator(char):void");
    }

    private int consumeIndex() {
        String trim = this.tq.chompTo(")").trim();
        Validate.isTrue(StringUtil.isNumeric(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    private String consumeSubQuery() {
        StringBuilder sb = new StringBuilder();
        while (!this.tq.isEmpty()) {
            if (this.tq.matches("(")) {
                sb.append("(");
                sb.append(this.tq.chompBalanced('(', ')'));
                sb.append(")");
            } else if (this.tq.matches("[")) {
                sb.append("[");
                sb.append(this.tq.chompBalanced('[', ']'));
                sb.append("]");
            } else if (this.tq.matchesAny(combinators)) {
                break;
            } else {
                sb.append(this.tq.consume());
            }
        }
        return sb.toString();
    }

    private void contains(boolean z3) {
        this.tq.consume(z3 ? ":containsOwn" : ":contains");
        String unescape = TokenQueue.unescape(this.tq.chompBalanced('(', ')'));
        Validate.notEmpty(unescape, ":contains(text) query must not be empty");
        if (z3) {
            this.evals.add(new Evaluator.ContainsOwnText(unescape));
        } else {
            this.evals.add(new Evaluator.ContainsText(unescape));
        }
    }

    private void cssNthChild(boolean z3, boolean z4) {
        String lowerCase = this.tq.chompTo(")").trim().toLowerCase();
        Matcher matcher = NTH_AB.matcher(lowerCase);
        Matcher matcher2 = NTH_B.matcher(lowerCase);
        int i2 = 2;
        if ("odd".equals(lowerCase)) {
            r5 = 1;
        } else if (!"even".equals(lowerCase)) {
            if (matcher.matches()) {
                int parseInt = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                r5 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
                i2 = parseInt;
            } else if (matcher2.matches()) {
                r5 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i2 = 0;
            } else {
                throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", lowerCase);
            }
        }
        if (z4) {
            if (z3) {
                this.evals.add(new Evaluator.IsNthLastOfType(i2, r5));
            } else {
                this.evals.add(new Evaluator.IsNthOfType(i2, r5));
            }
        } else if (z3) {
            this.evals.add(new Evaluator.IsNthLastChild(i2, r5));
        } else {
            this.evals.add(new Evaluator.IsNthChild(i2, r5));
        }
    }

    private void findElements() {
        if (this.tq.matchChomp("#")) {
            byId();
        } else if (this.tq.matchChomp(g0.f27568a)) {
            byClass();
        } else if (this.tq.matchesWord()) {
            byTag();
        } else if (this.tq.matches("[")) {
            byAttribute();
        } else if (this.tq.matchChomp(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
            allElements();
        } else if (this.tq.matchChomp(":lt(")) {
            indexLessThan();
        } else if (this.tq.matchChomp(":gt(")) {
            indexGreaterThan();
        } else if (this.tq.matchChomp(":eq(")) {
            indexEquals();
        } else if (this.tq.matches(":has(")) {
            has();
        } else if (this.tq.matches(":contains(")) {
            contains(false);
        } else if (this.tq.matches(":containsOwn(")) {
            contains(true);
        } else if (this.tq.matches(":matches(")) {
            matches(false);
        } else if (this.tq.matches(":matchesOwn(")) {
            matches(true);
        } else if (this.tq.matches(":not(")) {
            not();
        } else if (this.tq.matchChomp(":nth-child(")) {
            cssNthChild(false, false);
        } else if (this.tq.matchChomp(":nth-last-child(")) {
            cssNthChild(true, false);
        } else if (this.tq.matchChomp(":nth-of-type(")) {
            cssNthChild(false, true);
        } else if (this.tq.matchChomp(":nth-last-of-type(")) {
            cssNthChild(true, true);
        } else if (this.tq.matchChomp(":first-child")) {
            this.evals.add(new Evaluator.IsFirstChild());
        } else if (this.tq.matchChomp(":last-child")) {
            this.evals.add(new Evaluator.IsLastChild());
        } else if (this.tq.matchChomp(":first-of-type")) {
            this.evals.add(new Evaluator.IsFirstOfType());
        } else if (this.tq.matchChomp(":last-of-type")) {
            this.evals.add(new Evaluator.IsLastOfType());
        } else if (this.tq.matchChomp(":only-child")) {
            this.evals.add(new Evaluator.IsOnlyChild());
        } else if (this.tq.matchChomp(":only-of-type")) {
            this.evals.add(new Evaluator.IsOnlyOfType());
        } else if (this.tq.matchChomp(":empty")) {
            this.evals.add(new Evaluator.IsEmpty());
        } else if (this.tq.matchChomp(":root")) {
            this.evals.add(new Evaluator.IsRoot());
        } else {
            throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.query, this.tq.remainder());
        }
    }

    private void has() {
        this.tq.consume(":has");
        String chompBalanced = this.tq.chompBalanced('(', ')');
        Validate.notEmpty(chompBalanced, ":has(el) subselect must not be empty");
        this.evals.add(new StructuralEvaluator.Has(parse(chompBalanced)));
    }

    private void indexEquals() {
        this.evals.add(new Evaluator.IndexEquals(consumeIndex()));
    }

    private void indexGreaterThan() {
        this.evals.add(new Evaluator.IndexGreaterThan(consumeIndex()));
    }

    private void indexLessThan() {
        this.evals.add(new Evaluator.IndexLessThan(consumeIndex()));
    }

    private void matches(boolean z3) {
        this.tq.consume(z3 ? ":matchesOwn" : ":matches");
        String chompBalanced = this.tq.chompBalanced('(', ')');
        Validate.notEmpty(chompBalanced, ":matches(regex) query must not be empty");
        if (z3) {
            this.evals.add(new Evaluator.MatchesOwn(Pattern.compile(chompBalanced)));
        } else {
            this.evals.add(new Evaluator.Matches(Pattern.compile(chompBalanced)));
        }
    }

    private void not() {
        this.tq.consume(":not");
        String chompBalanced = this.tq.chompBalanced('(', ')');
        Validate.notEmpty(chompBalanced, ":not(selector) subselect must not be empty");
        this.evals.add(new StructuralEvaluator.Not(parse(chompBalanced)));
    }

    public static Evaluator parse(String str) {
        return new QueryParser(str).parse();
    }

    Evaluator parse() {
        this.tq.consumeWhitespace();
        if (this.tq.matchesAny(combinators)) {
            this.evals.add(new StructuralEvaluator.Root());
            combinator(this.tq.consume());
        } else {
            findElements();
        }
        while (!this.tq.isEmpty()) {
            boolean consumeWhitespace = this.tq.consumeWhitespace();
            if (this.tq.matchesAny(combinators)) {
                combinator(this.tq.consume());
            } else if (consumeWhitespace) {
                combinator(' ');
            } else {
                findElements();
            }
        }
        if (this.evals.size() == 1) {
            return this.evals.get(0);
        }
        return new CombiningEvaluator.And(this.evals);
    }
}
