package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;
/* loaded from: classes5.dex */
abstract class CombiningEvaluator extends Evaluator {
    final List<Evaluator> evaluators;

    /* loaded from: classes5.dex */
    static final class And extends CombiningEvaluator {
        /* JADX INFO: Access modifiers changed from: package-private */
        public And(Collection<Evaluator> collection) {
            super(collection);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i2 = 0; i2 < this.evaluators.size(); i2++) {
                if (!this.evaluators.get(i2).matches(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return StringUtil.join(this.evaluators, " ");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public And(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }
    }

    CombiningEvaluator() {
        this.evaluators = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replaceRightMostEvaluator(Evaluator evaluator) {
        List<Evaluator> list = this.evaluators;
        list.set(list.size() - 1, evaluator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Evaluator rightMostEvaluator() {
        if (this.evaluators.size() > 0) {
            List<Evaluator> list = this.evaluators;
            return list.get(list.size() - 1);
        }
        return null;
    }

    CombiningEvaluator(Collection<Evaluator> collection) {
        this();
        this.evaluators.addAll(collection);
    }

    /* loaded from: classes5.dex */
    static final class Or extends CombiningEvaluator {
        Or(Collection<Evaluator> collection) {
            if (collection.size() > 1) {
                this.evaluators.add(new And(collection));
            } else {
                this.evaluators.addAll(collection);
            }
        }

        public void add(Evaluator evaluator) {
            this.evaluators.add(evaluator);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i2 = 0; i2 < this.evaluators.size(); i2++) {
                if (this.evaluators.get(i2).matches(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":or%s", this.evaluators);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Or() {
        }
    }
}
