use clap::Parser;

#[derive(Parser, Debug)]
pub struct Args {
    #[arg(long, value_enum, value_name = "ID", help = "job id",)]
    id: usize,
}

const DATA:&[u8] = include_bytes!("data.txt");

fn main() -> anyhow::Result<()>{
    let args: Args = Args::parse();
    let myid = args.id;

    let lines = String::from_utf8(DATA.to_vec())?;
    // println!("debug data: {:?}", lines);
    let data = lines.split("\n").collect::<Vec<_>>();
    if myid > data.len() {
        println!("illegal job id ==> {}", myid);
        return Ok(())
    }
    println!("{}", data[myid]);

    std::fs::write("./output.txt", data[myid])?;

    Ok(())
}
