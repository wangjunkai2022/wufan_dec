.class Lcom/join/mgps/Util/n$a;
.super Ljava/lang/Object;
.source "CheckEmojiUtile.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/n;->a(Landroid/content/Context;)Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/n$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    move p5, p2

    :goto_0
    if-ge p5, p3, :cond_1

    .line 2
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    .line 3
    invoke-static {p6}, Lcom/join/mgps/Util/n;->c(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p4, p6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 5
    :cond_0
    iget-object p6, p0, Lcom/join/mgps/Util/n$a;->a:Landroid/content/Context;

    invoke-static {p6}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p6

    const-string v0, "\u6635\u79f0\u4e0d\u80fd\u542b\u6709\u8868\u60c5"

    invoke-virtual {p6, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 6
    :cond_1
    instance-of p5, p1, Landroid/text/Spanned;

    if-eqz p5, :cond_2

    .line 7
    new-instance p5, Landroid/text/SpannableString;

    invoke-direct {p5, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    return-object p5

    :cond_2
    return-object p4
.end method
