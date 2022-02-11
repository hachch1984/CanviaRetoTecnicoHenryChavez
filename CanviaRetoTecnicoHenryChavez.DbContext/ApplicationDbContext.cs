using CanviaRetoTecnicoHenryChavez.Model.Entity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CanviaRetoTecnicoHenryChavez.DbContext
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
        }


        public virtual DbSet<Store> Store{ get; set; }
        public virtual DbSet<Country> Country{ get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);


            modelBuilder.Entity<Country>(x => {
                x.HasKey(y => y.Id);
                x.Property(y => y.Id).UseIdentityColumn();
                x.Property(y => y.Name).IsRequired();
            });



            modelBuilder.Entity<Store>(x => {
                x.HasKey(y => y.Id);
            
                x.HasOne(y=>y.Country).WithMany().HasForeignKey(y=>y.Country_Id);

                x.Property(y=>y.Name).IsRequired(); 
                x.Property(y=>y.Country_Id).IsRequired();

            });
        }
         
    }
}
