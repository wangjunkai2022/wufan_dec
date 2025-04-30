.class public Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;
.super Landroid/app/Dialog;
.source "Cocos2dxEditBoxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputEditText:Landroid/widget/EditText;

.field private final mInputFlag:I

.field private mInputFlagConstraints:I

.field private final mInputMode:I

.field private mInputModeContraints:I

.field private mIsMultiline:Z

.field private final mMaxLength:I

.field private final mMessage:Ljava/lang/String;

.field private final mReturnType:I

.field private mTextViewTitle:Landroid/widget/TextView;

.field private final mTitle:Ljava/lang/String;

.field time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 5

    const v0, 0x1030011

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeAny:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeEmailAddr:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeNumeric:I

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModePhoneNumber:I

    const/4 v3, 0x4

    .line 6
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeUrl:I

    const/4 v4, 0x5

    .line 7
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeDecimal:I

    const/4 v4, 0x6

    .line 8
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeSingleLine:I

    .line 9
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagPassword:I

    .line 10
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagSensitive:I

    .line 11
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsWord:I

    .line 12
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsSentence:I

    .line 13
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 14
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDefault:I

    .line 15
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDone:I

    .line 16
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSend:I

    .line 17
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSearch:I

    .line 18
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeGo:I

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->time:J

    .line 20
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    .line 22
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    .line 23
    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    .line 24
    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    .line 25
    iput p7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->openKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->closeKeyboard()V

    return-void
.end method

.method private closeKeyboard()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private convertDipsToPixels(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private openKeyboard()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->closeKeyboard()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    new-instance p1, Lcom/papa91/wrapper/KeyboardListenLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/papa91/wrapper/KeyboardListenLayout;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    .line 6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 7
    invoke-direct {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->convertDipsToPixels(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 8
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    .line 10
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-direct {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->convertDipsToPixels(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 12
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 13
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 16
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 19
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    .line 20
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    or-int/2addr p1, v1

    const/4 v1, 0x2

    or-int/2addr p1, v1

    const/4 v2, 0x4

    or-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 21
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    .line 22
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 23
    :pswitch_0
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x3002

    .line 24
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x11

    .line 25
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 26
    :pswitch_3
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1002

    .line 27
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x21

    .line 28
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_6
    const v0, 0x20001

    .line 29
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    .line 30
    :goto_0
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mIsMultiline:Z

    if-eqz v0, :cond_0

    .line 31
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    const/high16 v5, 0x20000

    or-int/2addr v0, v5

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 33
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1000

    .line 34
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x4000

    .line 35
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x2000

    .line 36
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_4
    const/high16 v0, 0x80000

    .line 37
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :cond_5
    const/16 v0, 0x81

    .line 38
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    .line 39
    :goto_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 40
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_6

    .line 41
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 42
    :cond_6
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 43
    :cond_7
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 44
    :cond_8
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 45
    :cond_9
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 p1, p1, 0x6

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 46
    :cond_a
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 47
    :goto_2
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    if-lez p1, :cond_b

    .line 48
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-array v0, v3, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 49
    :cond_b
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 50
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p3, 0x1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p3, 0x0

    :cond_1
    return p3
.end method
