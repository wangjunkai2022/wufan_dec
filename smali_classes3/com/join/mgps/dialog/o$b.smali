.class Lcom/join/mgps/dialog/o$b;
.super Ljava/lang/Object;
.source "ArenaRoomTypeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/o;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/o;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const-string p1, ""

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iget-object p2, p2, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iget-object p2, p2, Lcom/join/mgps/dialog/o;->r:Ljava/lang/String;

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iget-object p2, p1, Lcom/join/mgps/dialog/o;->r:Ljava/lang/String;

    iput-object p2, p1, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iput-object p1, p2, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iget-object p1, p1, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iget-object p1, p1, Lcom/join/mgps/dialog/o;->k:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u623f\u95f4\u6027\u8d28\uff08\u5bc6\u7801"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iget-object v0, v0, Lcom/join/mgps/dialog/o;->q:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/o$b;->a:Lcom/join/mgps/dialog/o;

    iget-object p1, p1, Lcom/join/mgps/dialog/o;->k:Landroid/widget/TextView;

    const-string p2, "\u623f\u95f4\u6027\u8d28"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
