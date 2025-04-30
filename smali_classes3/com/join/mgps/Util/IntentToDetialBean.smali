.class public Lcom/join/mgps/Util/IntentToDetialBean;
.super Ljava/lang/Object;
.source "IntentToDetialBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->e:I

    .line 5
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->a:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/join/mgps/Util/IntentToDetialBean;->b:F

    .line 7
    iput-object p3, p0, Lcom/join/mgps/Util/IntentToDetialBean;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/join/mgps/Util/IntentToDetialBean;->d:Ljava/lang/String;

    .line 9
    iput p5, p0, Lcom/join/mgps/Util/IntentToDetialBean;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->b:F

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->c:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->a:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->e:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->d:Ljava/lang/String;

    return-void
.end method

.method public j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->b:F

    return-void
.end method
