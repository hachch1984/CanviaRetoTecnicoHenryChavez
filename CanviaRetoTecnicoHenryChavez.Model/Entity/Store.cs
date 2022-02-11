namespace CanviaRetoTecnicoHenryChavez.Model.Entity
{
    public class Store
    {
        public string Id { get; set; }
        public string Name { get; set; } 

        #region
        public Country Country { get; set; }
        public int? Country_Id { get; set; }
        #endregion

    }
}
