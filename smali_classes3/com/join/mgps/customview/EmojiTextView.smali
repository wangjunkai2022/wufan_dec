.class public Lcom/join/mgps/customview/EmojiTextView;
.super Landroid/widget/TextView;
.source "EmojiTextView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/text/Html$ImageGetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/EmojiTextView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/EmojiTextView$a;-><init>(Lcom/join/mgps/customview/EmojiTextView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/text/Html$ImageGetter;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/EmojiTextView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p2, Lcom/join/mgps/customview/EmojiTextView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/EmojiTextView$a;-><init>(Lcom/join/mgps/customview/EmojiTextView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/text/Html$ImageGetter;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/EmojiTextView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Lcom/join/mgps/customview/EmojiTextView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/EmojiTextView$a;-><init>(Lcom/join/mgps/customview/EmojiTextView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/text/Html$ImageGetter;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/EmojiTextView;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/EmojiTextView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/EmojiTextView;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const v0, 0x1f449

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<img src=\"emoji_01\"/>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x1f448

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<img src=\"emoji_02\"/>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x263a

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<img src=\"emoji_03\"/>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x1f511

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<img src=\"emoji_04\"/>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEmojiText(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/EmojiTextView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/text/Html$ImageGetter;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
