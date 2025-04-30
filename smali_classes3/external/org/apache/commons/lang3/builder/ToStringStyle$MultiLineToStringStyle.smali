.class final Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;
.super Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiLineToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    const-string v0, "["

    .line 2
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R0(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lexternal/org/apache/commons/lang3/f;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->U0(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W0(Z)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->v:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
