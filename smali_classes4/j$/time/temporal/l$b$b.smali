.class final enum Lj$/time/temporal/l$b$b;
.super Lj$/time/temporal/l$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/temporal/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/time/temporal/l$b;-><init>(Ljava/lang/String;ILj$/time/temporal/l$a;)V

    return-void
.end method


# virtual methods
.method public S(Lj$/time/temporal/n;)Z
    .locals 1

    sget-object v0, Lj$/time/temporal/j;->MONTH_OF_YEAR:Lj$/time/temporal/j;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p1}, Lj$/time/chrono/h;->B(Lj$/time/temporal/n;)Lj$/time/chrono/h;

    move-result-object p1

    sget-object v0, Lj$/time/chrono/j;->a:Lj$/time/chrono/j;

    invoke-interface {p1, v0}, Lj$/time/chrono/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(Lj$/time/temporal/m;J)Lj$/time/temporal/m;
    .locals 5

    invoke-virtual {p0, p1}, Lj$/time/temporal/l$b$b;->o(Lj$/time/temporal/n;)J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/temporal/l$b$b;->y()Lj$/time/temporal/w;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/w;->b(JLj$/time/temporal/r;)J

    sget-object v2, Lj$/time/temporal/j;->MONTH_OF_YEAR:Lj$/time/temporal/j;

    invoke-interface {p1, v2}, Lj$/time/temporal/n;->g(Lj$/time/temporal/r;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long/2addr p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, v2, p2, p3}, Lj$/time/temporal/m;->c(Lj$/time/temporal/r;J)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public o(Lj$/time/temporal/n;)J
    .locals 4

    invoke-virtual {p0, p1}, Lj$/time/temporal/l$b$b;->S(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/j;->MONTH_OF_YEAR:Lj$/time/temporal/j;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->g(Lj$/time/temporal/r;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p1, Lj$/time/temporal/v;

    const-string v0, "Unsupported field: QuarterOfYear"

    invoke-direct {p1, v0}, Lj$/time/temporal/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "QuarterOfYear"

    return-object v0
.end method

.method public y()Lj$/time/temporal/w;
    .locals 4

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/w;->i(JJ)Lj$/time/temporal/w;

    move-result-object v0

    return-object v0
.end method
