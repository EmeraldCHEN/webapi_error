using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace api.Models
{
    public partial class Rugby7Context : DbContext
    {
        public Rugby7Context()
        {
        }

        public Rugby7Context(DbContextOptions<Rugby7Context> options)
            : base(options)
        {
        }

        public virtual DbSet<GameSchedule> GameSchedule { get; set; }
        public virtual DbSet<Players> Players { get; set; }
        public virtual DbSet<PoolPoints> PoolPoints { get; set; }
        public virtual DbSet<Staff> Staff { get; set; }
        public virtual DbSet<Teams> Teams { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=192.168.99.100;Database=Rugby7db;User=sa;Password=yourStrong(*)Password;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<GameSchedule>(entity =>
            {
                entity.ToTable("game_schedule");

                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .HasMaxLength(4)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.FieldNumber).HasColumnName("field_number");

                entity.Property(e => e.TeamA)
                    .IsRequired()
                    .HasColumnName("team_a")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.TeamAScore).HasColumnName("team_a_score");

                entity.Property(e => e.TeamB)
                    .IsRequired()
                    .HasColumnName("team_b")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.TeamBScore).HasColumnName("team_b_score");

                entity.Property(e => e.Time)
                    .IsRequired()
                    .HasColumnName("time")
                    .HasMaxLength(7)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Players>(entity =>
            {
                entity.ToTable("players");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.TeamId)
                    .IsRequired()
                    .HasColumnName("team_id")
                    .HasMaxLength(4)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<PoolPoints>(entity =>
            {
                entity.ToTable("pool_points");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.GameId).HasColumnName("game_id");

                entity.Property(e => e.Points).HasColumnName("points");

                entity.Property(e => e.TeamId)
                    .IsRequired()
                    .HasColumnName("team_id")
                    .HasMaxLength(4)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Staff>(entity =>
            {
                entity.ToTable("staff");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.TeamId)
                    .IsRequired()
                    .HasColumnName("team_id")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasColumnName("title")
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Teams>(entity =>
            {
                entity.ToTable("teams");

                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .HasMaxLength(4)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Pool)
                    .IsRequired()
                    .HasColumnName("pool")
                    .HasMaxLength(10)
                    .IsUnicode(false);
            });
        }
    }
}
