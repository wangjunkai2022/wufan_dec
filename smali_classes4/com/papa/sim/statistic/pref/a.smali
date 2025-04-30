.class public Lcom/papa/sim/statistic/pref/a;
.super Ljava/lang/Object;
.source "LiveStat.java"


# static fields
.field public static final e:B

.field public static final f:B


# instance fields
.field private a:B

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/pref/a;->c:J

    return-wide v0
.end method

.method public b()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/papa/sim/statistic/pref/a;->a:B

    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/pref/a;->b:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/pref/a;->c:J

    return-void
.end method

.method public f(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/papa/sim/statistic/pref/a;->a:B

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/pref/a;->b:J

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/pref/a;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/pref/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/papa/sim/statistic/pref/a;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/papa/sim/statistic/pref/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/papa/sim/statistic/pref/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
