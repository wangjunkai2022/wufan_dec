package androidx.constraintlayout.widget;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes.dex */
public class ConstraintProperties {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int END = 7;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: a  reason: collision with root package name */
    ConstraintLayout.LayoutParams f3449a;

    /* renamed from: b  reason: collision with root package name */
    View f3450b;

    public ConstraintProperties(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.f3449a = (ConstraintLayout.LayoutParams) layoutParams;
            this.f3450b = view;
            return;
        }
        throw new RuntimeException("Only children of ConstraintLayout.LayoutParams supported");
    }

    private String a(int side) {
        switch (side) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public ConstraintProperties addToHorizontalChain(int leftId, int rightId) {
        connect(1, leftId, leftId == 0 ? 1 : 2, 0);
        connect(2, rightId, rightId == 0 ? 2 : 1, 0);
        if (leftId != 0) {
            new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(leftId)).connect(2, this.f3450b.getId(), 1, 0);
        }
        if (rightId != 0) {
            new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(rightId)).connect(1, this.f3450b.getId(), 2, 0);
        }
        return this;
    }

    public ConstraintProperties addToHorizontalChainRTL(int leftId, int rightId) {
        connect(6, leftId, leftId == 0 ? 6 : 7, 0);
        connect(7, rightId, rightId == 0 ? 7 : 6, 0);
        if (leftId != 0) {
            new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(leftId)).connect(7, this.f3450b.getId(), 6, 0);
        }
        if (rightId != 0) {
            new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(rightId)).connect(6, this.f3450b.getId(), 7, 0);
        }
        return this;
    }

    public ConstraintProperties addToVerticalChain(int topId, int bottomId) {
        connect(3, topId, topId == 0 ? 3 : 4, 0);
        connect(4, bottomId, bottomId == 0 ? 4 : 3, 0);
        if (topId != 0) {
            new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(topId)).connect(4, this.f3450b.getId(), 3, 0);
        }
        if (bottomId != 0) {
            new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(bottomId)).connect(3, this.f3450b.getId(), 4, 0);
        }
        return this;
    }

    public ConstraintProperties alpha(float alpha) {
        this.f3450b.setAlpha(alpha);
        return this;
    }

    public void apply() {
    }

    public ConstraintProperties center(int firstID, int firstSide, int firstMargin, int secondId, int secondSide, int secondMargin, float bias) {
        if (firstMargin >= 0) {
            if (secondMargin >= 0) {
                if (bias <= 0.0f || bias > 1.0f) {
                    throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
                }
                if (firstSide == 1 || firstSide == 2) {
                    connect(1, firstID, firstSide, firstMargin);
                    connect(2, secondId, secondSide, secondMargin);
                    this.f3449a.horizontalBias = bias;
                } else if (firstSide != 6 && firstSide != 7) {
                    connect(3, firstID, firstSide, firstMargin);
                    connect(4, secondId, secondSide, secondMargin);
                    this.f3449a.verticalBias = bias;
                } else {
                    connect(6, firstID, firstSide, firstMargin);
                    connect(7, secondId, secondSide, secondMargin);
                    this.f3449a.horizontalBias = bias;
                }
                return this;
            }
            throw new IllegalArgumentException("margin must be > 0");
        }
        throw new IllegalArgumentException("margin must be > 0");
    }

    public ConstraintProperties centerHorizontally(int leftId, int leftSide, int leftMargin, int rightId, int rightSide, int rightMargin, float bias) {
        connect(1, leftId, leftSide, leftMargin);
        connect(2, rightId, rightSide, rightMargin);
        this.f3449a.horizontalBias = bias;
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int startId, int startSide, int startMargin, int endId, int endSide, int endMargin, float bias) {
        connect(6, startId, startSide, startMargin);
        connect(7, endId, endSide, endMargin);
        this.f3449a.horizontalBias = bias;
        return this;
    }

    public ConstraintProperties centerVertically(int topId, int topSide, int topMargin, int bottomId, int bottomSide, int bottomMargin, float bias) {
        connect(3, topId, topSide, topMargin);
        connect(4, bottomId, bottomSide, bottomMargin);
        this.f3449a.verticalBias = bias;
        return this;
    }

    public ConstraintProperties connect(int startSide, int endID, int endSide, int margin) {
        switch (startSide) {
            case 1:
                if (endSide == 1) {
                    ConstraintLayout.LayoutParams layoutParams = this.f3449a;
                    layoutParams.leftToLeft = endID;
                    layoutParams.leftToRight = -1;
                } else if (endSide == 2) {
                    ConstraintLayout.LayoutParams layoutParams2 = this.f3449a;
                    layoutParams2.leftToRight = endID;
                    layoutParams2.leftToLeft = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + a(endSide) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.f3449a).leftMargin = margin;
                break;
            case 2:
                if (endSide == 1) {
                    ConstraintLayout.LayoutParams layoutParams3 = this.f3449a;
                    layoutParams3.rightToLeft = endID;
                    layoutParams3.rightToRight = -1;
                } else if (endSide == 2) {
                    ConstraintLayout.LayoutParams layoutParams4 = this.f3449a;
                    layoutParams4.rightToRight = endID;
                    layoutParams4.rightToLeft = -1;
                } else {
                    throw new IllegalArgumentException("right to " + a(endSide) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.f3449a).rightMargin = margin;
                break;
            case 3:
                if (endSide == 3) {
                    ConstraintLayout.LayoutParams layoutParams5 = this.f3449a;
                    layoutParams5.topToTop = endID;
                    layoutParams5.topToBottom = -1;
                    layoutParams5.baselineToBaseline = -1;
                    layoutParams5.baselineToTop = -1;
                    layoutParams5.baselineToBottom = -1;
                } else if (endSide == 4) {
                    ConstraintLayout.LayoutParams layoutParams6 = this.f3449a;
                    layoutParams6.topToBottom = endID;
                    layoutParams6.topToTop = -1;
                    layoutParams6.baselineToBaseline = -1;
                    layoutParams6.baselineToTop = -1;
                    layoutParams6.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + a(endSide) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.f3449a).topMargin = margin;
                break;
            case 4:
                if (endSide == 4) {
                    ConstraintLayout.LayoutParams layoutParams7 = this.f3449a;
                    layoutParams7.bottomToBottom = endID;
                    layoutParams7.bottomToTop = -1;
                    layoutParams7.baselineToBaseline = -1;
                    layoutParams7.baselineToTop = -1;
                    layoutParams7.baselineToBottom = -1;
                } else if (endSide == 3) {
                    ConstraintLayout.LayoutParams layoutParams8 = this.f3449a;
                    layoutParams8.bottomToTop = endID;
                    layoutParams8.bottomToBottom = -1;
                    layoutParams8.baselineToBaseline = -1;
                    layoutParams8.baselineToTop = -1;
                    layoutParams8.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + a(endSide) + " undefined");
                }
                ((ViewGroup.MarginLayoutParams) this.f3449a).bottomMargin = margin;
                break;
            case 5:
                if (endSide == 5) {
                    ConstraintLayout.LayoutParams layoutParams9 = this.f3449a;
                    layoutParams9.baselineToBaseline = endID;
                    layoutParams9.bottomToBottom = -1;
                    layoutParams9.bottomToTop = -1;
                    layoutParams9.topToTop = -1;
                    layoutParams9.topToBottom = -1;
                }
                if (endSide == 3) {
                    ConstraintLayout.LayoutParams layoutParams10 = this.f3449a;
                    layoutParams10.baselineToTop = endID;
                    layoutParams10.bottomToBottom = -1;
                    layoutParams10.bottomToTop = -1;
                    layoutParams10.topToTop = -1;
                    layoutParams10.topToBottom = -1;
                } else if (endSide == 4) {
                    ConstraintLayout.LayoutParams layoutParams11 = this.f3449a;
                    layoutParams11.baselineToBottom = endID;
                    layoutParams11.bottomToBottom = -1;
                    layoutParams11.bottomToTop = -1;
                    layoutParams11.topToTop = -1;
                    layoutParams11.topToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + a(endSide) + " undefined");
                }
                this.f3449a.baselineMargin = margin;
                break;
            case 6:
                if (endSide == 6) {
                    ConstraintLayout.LayoutParams layoutParams12 = this.f3449a;
                    layoutParams12.startToStart = endID;
                    layoutParams12.startToEnd = -1;
                } else if (endSide == 7) {
                    ConstraintLayout.LayoutParams layoutParams13 = this.f3449a;
                    layoutParams13.startToEnd = endID;
                    layoutParams13.startToStart = -1;
                } else {
                    throw new IllegalArgumentException("right to " + a(endSide) + " undefined");
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    this.f3449a.setMarginStart(margin);
                    break;
                }
                break;
            case 7:
                if (endSide == 7) {
                    ConstraintLayout.LayoutParams layoutParams14 = this.f3449a;
                    layoutParams14.endToEnd = endID;
                    layoutParams14.endToStart = -1;
                } else if (endSide == 6) {
                    ConstraintLayout.LayoutParams layoutParams15 = this.f3449a;
                    layoutParams15.endToStart = endID;
                    layoutParams15.endToEnd = -1;
                } else {
                    throw new IllegalArgumentException("right to " + a(endSide) + " undefined");
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    this.f3449a.setMarginEnd(margin);
                    break;
                }
                break;
            default:
                throw new IllegalArgumentException(a(startSide) + " to " + a(endSide) + " unknown");
        }
        return this;
    }

    public ConstraintProperties constrainDefaultHeight(int height) {
        this.f3449a.matchConstraintDefaultHeight = height;
        return this;
    }

    public ConstraintProperties constrainDefaultWidth(int width) {
        this.f3449a.matchConstraintDefaultWidth = width;
        return this;
    }

    public ConstraintProperties constrainHeight(int height) {
        ((ViewGroup.MarginLayoutParams) this.f3449a).height = height;
        return this;
    }

    public ConstraintProperties constrainMaxHeight(int height) {
        this.f3449a.matchConstraintMaxHeight = height;
        return this;
    }

    public ConstraintProperties constrainMaxWidth(int width) {
        this.f3449a.matchConstraintMaxWidth = width;
        return this;
    }

    public ConstraintProperties constrainMinHeight(int height) {
        this.f3449a.matchConstraintMinHeight = height;
        return this;
    }

    public ConstraintProperties constrainMinWidth(int width) {
        this.f3449a.matchConstraintMinWidth = width;
        return this;
    }

    public ConstraintProperties constrainWidth(int width) {
        ((ViewGroup.MarginLayoutParams) this.f3449a).width = width;
        return this;
    }

    public ConstraintProperties dimensionRatio(String ratio) {
        this.f3449a.dimensionRatio = ratio;
        return this;
    }

    public ConstraintProperties elevation(float elevation) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3450b.setElevation(elevation);
        }
        return this;
    }

    public ConstraintProperties goneMargin(int anchor, int value) {
        switch (anchor) {
            case 1:
                this.f3449a.goneLeftMargin = value;
                break;
            case 2:
                this.f3449a.goneRightMargin = value;
                break;
            case 3:
                this.f3449a.goneTopMargin = value;
                break;
            case 4:
                this.f3449a.goneBottomMargin = value;
                break;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.f3449a.goneStartMargin = value;
                break;
            case 7:
                this.f3449a.goneEndMargin = value;
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return this;
    }

    public ConstraintProperties horizontalBias(float bias) {
        this.f3449a.horizontalBias = bias;
        return this;
    }

    public ConstraintProperties horizontalChainStyle(int chainStyle) {
        this.f3449a.horizontalChainStyle = chainStyle;
        return this;
    }

    public ConstraintProperties horizontalWeight(float weight) {
        this.f3449a.horizontalWeight = weight;
        return this;
    }

    public ConstraintProperties margin(int anchor, int value) {
        switch (anchor) {
            case 1:
                ((ViewGroup.MarginLayoutParams) this.f3449a).leftMargin = value;
                break;
            case 2:
                ((ViewGroup.MarginLayoutParams) this.f3449a).rightMargin = value;
                break;
            case 3:
                ((ViewGroup.MarginLayoutParams) this.f3449a).topMargin = value;
                break;
            case 4:
                ((ViewGroup.MarginLayoutParams) this.f3449a).bottomMargin = value;
                break;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.f3449a.setMarginStart(value);
                break;
            case 7:
                this.f3449a.setMarginEnd(value);
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return this;
    }

    public ConstraintProperties removeConstraints(int anchor) {
        switch (anchor) {
            case 1:
                ConstraintLayout.LayoutParams layoutParams = this.f3449a;
                layoutParams.leftToRight = -1;
                layoutParams.leftToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = -1;
                layoutParams.goneLeftMargin = Integer.MIN_VALUE;
                break;
            case 2:
                ConstraintLayout.LayoutParams layoutParams2 = this.f3449a;
                layoutParams2.rightToRight = -1;
                layoutParams2.rightToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = -1;
                layoutParams2.goneRightMargin = Integer.MIN_VALUE;
                break;
            case 3:
                ConstraintLayout.LayoutParams layoutParams3 = this.f3449a;
                layoutParams3.topToBottom = -1;
                layoutParams3.topToTop = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = -1;
                layoutParams3.goneTopMargin = Integer.MIN_VALUE;
                break;
            case 4:
                ConstraintLayout.LayoutParams layoutParams4 = this.f3449a;
                layoutParams4.bottomToTop = -1;
                layoutParams4.bottomToBottom = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = -1;
                layoutParams4.goneBottomMargin = Integer.MIN_VALUE;
                break;
            case 5:
                this.f3449a.baselineToBaseline = -1;
                break;
            case 6:
                ConstraintLayout.LayoutParams layoutParams5 = this.f3449a;
                layoutParams5.startToEnd = -1;
                layoutParams5.startToStart = -1;
                layoutParams5.setMarginStart(-1);
                this.f3449a.goneStartMargin = Integer.MIN_VALUE;
                break;
            case 7:
                ConstraintLayout.LayoutParams layoutParams6 = this.f3449a;
                layoutParams6.endToStart = -1;
                layoutParams6.endToEnd = -1;
                layoutParams6.setMarginEnd(-1);
                this.f3449a.goneEndMargin = Integer.MIN_VALUE;
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return this;
    }

    public ConstraintProperties removeFromHorizontalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.f3449a;
        int i2 = layoutParams.leftToRight;
        int i4 = layoutParams.rightToLeft;
        if (i2 == -1 && i4 == -1) {
            int i5 = layoutParams.startToEnd;
            int i6 = layoutParams.endToStart;
            if (i5 != -1 || i6 != -1) {
                ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(i5));
                ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(i6));
                ConstraintLayout.LayoutParams layoutParams2 = this.f3449a;
                if (i5 != -1 && i6 != -1) {
                    constraintProperties.connect(7, i6, 6, 0);
                    constraintProperties2.connect(6, i2, 7, 0);
                } else if (i2 != -1 || i6 != -1) {
                    int i7 = layoutParams2.rightToRight;
                    if (i7 != -1) {
                        constraintProperties.connect(7, i7, 7, 0);
                    } else {
                        int i8 = layoutParams2.leftToLeft;
                        if (i8 != -1) {
                            constraintProperties2.connect(6, i8, 6, 0);
                        }
                    }
                }
            }
            removeConstraints(6);
            removeConstraints(7);
        } else {
            ConstraintProperties constraintProperties3 = new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(i2));
            ConstraintProperties constraintProperties4 = new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(i4));
            ConstraintLayout.LayoutParams layoutParams3 = this.f3449a;
            if (i2 != -1 && i4 != -1) {
                constraintProperties3.connect(2, i4, 1, 0);
                constraintProperties4.connect(1, i2, 2, 0);
            } else if (i2 != -1 || i4 != -1) {
                int i9 = layoutParams3.rightToRight;
                if (i9 != -1) {
                    constraintProperties3.connect(2, i9, 2, 0);
                } else {
                    int i10 = layoutParams3.leftToLeft;
                    if (i10 != -1) {
                        constraintProperties4.connect(1, i10, 1, 0);
                    }
                }
            }
            removeConstraints(1);
            removeConstraints(2);
        }
        return this;
    }

    public ConstraintProperties removeFromVerticalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.f3449a;
        int i2 = layoutParams.topToBottom;
        int i4 = layoutParams.bottomToTop;
        if (i2 != -1 || i4 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(i2));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.f3450b.getParent()).findViewById(i4));
            ConstraintLayout.LayoutParams layoutParams2 = this.f3449a;
            if (i2 != -1 && i4 != -1) {
                constraintProperties.connect(4, i4, 3, 0);
                constraintProperties2.connect(3, i2, 4, 0);
            } else if (i2 != -1 || i4 != -1) {
                int i5 = layoutParams2.bottomToBottom;
                if (i5 != -1) {
                    constraintProperties.connect(4, i5, 4, 0);
                } else {
                    int i6 = layoutParams2.topToTop;
                    if (i6 != -1) {
                        constraintProperties2.connect(3, i6, 3, 0);
                    }
                }
            }
        }
        removeConstraints(3);
        removeConstraints(4);
        return this;
    }

    public ConstraintProperties rotation(float rotation) {
        this.f3450b.setRotation(rotation);
        return this;
    }

    public ConstraintProperties rotationX(float rotationX) {
        this.f3450b.setRotationX(rotationX);
        return this;
    }

    public ConstraintProperties rotationY(float rotationY) {
        this.f3450b.setRotationY(rotationY);
        return this;
    }

    public ConstraintProperties scaleX(float scaleX) {
        this.f3450b.setScaleY(scaleX);
        return this;
    }

    public ConstraintProperties scaleY(float scaleY) {
        return this;
    }

    public ConstraintProperties transformPivot(float transformPivotX, float transformPivotY) {
        this.f3450b.setPivotX(transformPivotX);
        this.f3450b.setPivotY(transformPivotY);
        return this;
    }

    public ConstraintProperties transformPivotX(float transformPivotX) {
        this.f3450b.setPivotX(transformPivotX);
        return this;
    }

    public ConstraintProperties transformPivotY(float transformPivotY) {
        this.f3450b.setPivotY(transformPivotY);
        return this;
    }

    public ConstraintProperties translation(float translationX, float translationY) {
        this.f3450b.setTranslationX(translationX);
        this.f3450b.setTranslationY(translationY);
        return this;
    }

    public ConstraintProperties translationX(float translationX) {
        this.f3450b.setTranslationX(translationX);
        return this;
    }

    public ConstraintProperties translationY(float translationY) {
        this.f3450b.setTranslationY(translationY);
        return this;
    }

    public ConstraintProperties translationZ(float translationZ) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3450b.setTranslationZ(translationZ);
        }
        return this;
    }

    public ConstraintProperties verticalBias(float bias) {
        this.f3449a.verticalBias = bias;
        return this;
    }

    public ConstraintProperties verticalChainStyle(int chainStyle) {
        this.f3449a.verticalChainStyle = chainStyle;
        return this;
    }

    public ConstraintProperties verticalWeight(float weight) {
        this.f3449a.verticalWeight = weight;
        return this;
    }

    public ConstraintProperties visibility(int visibility) {
        this.f3450b.setVisibility(visibility);
        return this;
    }

    public ConstraintProperties centerHorizontally(int toView) {
        if (toView == 0) {
            center(0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(toView, 2, 0, toView, 1, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int toView) {
        if (toView == 0) {
            center(0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(toView, 7, 0, toView, 6, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerVertically(int toView) {
        if (toView == 0) {
            center(0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(toView, 4, 0, toView, 3, 0, 0.5f);
        }
        return this;
    }
}
