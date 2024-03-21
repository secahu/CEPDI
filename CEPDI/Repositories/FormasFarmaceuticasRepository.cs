using CEPDI.Models;
using CEPDI.Repositories.Interfaces;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace CEPDI.Repositories
{
    public class FormasFarmaceuticasRepository:GenericRepository<FormasFarmaceuticasModel>,IFormasFarmaceuticasRepository
    {

        private static string _tableName = "FormasFarmaceuticas";
        private static string _tableNameV = "FormasFarmaceuticas";
        public FormasFarmaceuticasRepository() : base(_tableName, _tableNameV)
        {
        }


        public async Task<FormasFarmaceuticasModel> getByFiltros(FormasFarmaceuticasModel filtro)
        {
            string where = " WHERE Activo=@Activo ";


            string sql = $"select * " +
                $" from {_tableName}";

            var dictionary = new Dictionary<string, object>
            {
                { "@Activo", 1 }
            };

            if (filtro.Id > 0)
            {
                dictionary.Add("@Id", filtro.Id);
                where += $" and Id=@Id ";
            }

            if (!string.IsNullOrEmpty(filtro.FormaFarmaceutica))
            {
                dictionary.Add("@FormaFarmaceutica", filtro.FormaFarmaceutica);
                where += $" and FormaFarmaceutica=@FormaFarmaceutica ";
            }

            sql += where;
            var parameters = new DynamicParameters(dictionary);
            using (var connection = new SqlConnection(_connection))
            {
                FormasFarmaceuticasModel result = new FormasFarmaceuticasModel();
                try
                {
                    result = await connection.QueryFirstOrDefaultAsync<FormasFarmaceuticasModel>(sql, filtro);
                }
                catch (Exception E)
                {
                    string error = E.Message;
                }

                return result;
            }
        }
    }
}