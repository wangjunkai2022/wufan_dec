.class public final synthetic Lcom/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/join/mgps/customview/w$a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/c;->e:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/BaseAppCompatActivity$h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
